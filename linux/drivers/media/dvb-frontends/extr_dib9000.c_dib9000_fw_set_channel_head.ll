; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_fw_set_channel_head.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_fw_set_channel_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib9000_state = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }

@SYS_DVBT = common dso_local global i64 0, align 8
@FE_MM_W_CHANNEL_HEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib9000_state*)* @dib9000_fw_set_channel_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib9000_fw_set_channel_head(%struct.dib9000_state* %0) #0 {
  %2 = alloca %struct.dib9000_state*, align 8
  %3 = alloca [9 x i32], align 16
  %4 = alloca i32, align 4
  store %struct.dib9000_state* %0, %struct.dib9000_state** %2, align 8
  %5 = load %struct.dib9000_state*, %struct.dib9000_state** %2, align 8
  %6 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %7, i64 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sdiv i32 %12, 1000
  store i32 %13, i32* %4, align 4
  %14 = load %struct.dib9000_state*, %struct.dib9000_state** %2, align 8
  %15 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = srem i32 %16, 2
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 101
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %19, %1
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 0
  %25 = and i32 %24, 255
  %26 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  store i32 %25, i32* %26, align 16
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 8
  %29 = and i32 %28, 255
  %30 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %4, align 4
  %32 = ashr i32 %31, 16
  %33 = and i32 %32, 255
  %34 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 2
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* %4, align 4
  %36 = ashr i32 %35, 24
  %37 = and i32 %36, 255
  %38 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 3
  store i32 %37, i32* %38, align 4
  %39 = load %struct.dib9000_state*, %struct.dib9000_state** %2, align 8
  %40 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %41, i64 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %46, 1000
  %48 = ashr i32 %47, 0
  %49 = and i32 %48, 255
  %50 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 4
  store i32 %49, i32* %50, align 16
  %51 = load %struct.dib9000_state*, %struct.dib9000_state** %2, align 8
  %52 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %53, i64 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sdiv i32 %58, 1000
  %60 = ashr i32 %59, 8
  %61 = and i32 %60, 255
  %62 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 5
  store i32 %61, i32* %62, align 4
  %63 = load %struct.dib9000_state*, %struct.dib9000_state** %2, align 8
  %64 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %65, i64 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sdiv i32 %70, 1000
  %72 = ashr i32 %71, 16
  %73 = and i32 %72, 255
  %74 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 6
  store i32 %73, i32* %74, align 8
  %75 = load %struct.dib9000_state*, %struct.dib9000_state** %2, align 8
  %76 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %77, i64 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sdiv i32 %82, 1000
  %84 = ashr i32 %83, 24
  %85 = and i32 %84, 255
  %86 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 7
  store i32 %85, i32* %86, align 4
  %87 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 8
  store i32 128, i32* %87, align 16
  %88 = load %struct.dib9000_state*, %struct.dib9000_state** %2, align 8
  %89 = getelementptr inbounds %struct.dib9000_state, %struct.dib9000_state* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %90, i64 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @SYS_DVBT, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %22
  %99 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 8
  %100 = load i32, i32* %99, align 16
  %101 = or i32 %100, 1
  store i32 %101, i32* %99, align 16
  br label %102

102:                                              ; preds = %98, %22
  %103 = load %struct.dib9000_state*, %struct.dib9000_state** %2, align 8
  %104 = load i32, i32* @FE_MM_W_CHANNEL_HEAD, align 4
  %105 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  %106 = call i32 @dib9000_risc_mem_write(%struct.dib9000_state* %103, i32 %104, i32* %105)
  ret void
}

declare dso_local i32 @dib9000_risc_mem_write(%struct.dib9000_state*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
