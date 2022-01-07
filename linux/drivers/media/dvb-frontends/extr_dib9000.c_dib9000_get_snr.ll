; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_get_snr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_get_snr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib9000_state* }
%struct.dib9000_state = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"could not get the lock\0A\00", align 1
@FE_SYNC_CHANNEL = common dso_local global i32 0, align 4
@FE_MM_R_FE_MONITOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib9000_get_snr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib9000_get_snr(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dib9000_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.dib9000_state*, %struct.dib9000_state** %12, align 8
  store %struct.dib9000_state* %13, %struct.dib9000_state** %4, align 8
  %14 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %15 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %5, align 8
  %18 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %19 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i64 @mutex_lock_interruptible(i32* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %109

26:                                               ; preds = %1
  %27 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %28 = load i32, i32* @FE_SYNC_CHANNEL, align 4
  %29 = call i64 @dib9000_fw_memmbx_sync(%struct.dib9000_state* %27, i32 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %33 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  store i32 0, i32* %2, align 4
  br label %109

37:                                               ; preds = %26
  %38 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %39 = load i32, i32* @FE_MM_R_FE_MONITOR, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @dib9000_risc_mem_read(%struct.dib9000_state* %38, i32 %39, i32* %40, i32 32)
  %42 = load %struct.dib9000_state*, %struct.dib9000_state** %4, align 8
  %43 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 7
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = ashr i32 %50, 4
  %52 = and i32 %51, 255
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, 15
  %55 = shl i32 %54, 2
  store i32 %55, i32* %8, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 8
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = ashr i32 %59, 14
  %61 = and i32 %60, 3
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, 32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %37
  %68 = load i32, i32* %8, align 4
  %69 = sub nsw i32 %68, 64
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %67, %37
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 16
  %73 = load i32, i32* %6, align 4
  %74 = shl i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %9, align 4
  %76 = ashr i32 %75, 6
  %77 = and i32 %76, 255
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %9, align 4
  %79 = and i32 %78, 63
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = and i32 %80, 32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %70
  %84 = load i32, i32* %8, align 4
  %85 = sub nsw i32 %84, 64
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %83, %70
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 16
  %89 = load i32, i32* %7, align 4
  %90 = shl i32 %89, %88
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %86
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %6, align 4
  %96 = sdiv i32 %94, %95
  %97 = shl i32 %96, 16
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %7, align 4
  %100 = shl i32 %99, 16
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %10, align 4
  %103 = mul nsw i32 %101, %102
  %104 = sub nsw i32 %100, %103
  %105 = load i32, i32* %6, align 4
  %106 = sdiv i32 %104, %105
  %107 = add nsw i32 %98, %106
  store i32 %107, i32* %2, align 4
  br label %109

108:                                              ; preds = %86
  store i32 -1, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %93, %31, %24
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i64 @dib9000_fw_memmbx_sync(%struct.dib9000_state*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dib9000_risc_mem_read(%struct.dib9000_state*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
