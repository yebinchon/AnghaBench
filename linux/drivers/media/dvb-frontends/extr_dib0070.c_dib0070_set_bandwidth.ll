; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0070.c_dib0070_set_bandwidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0070.c_dib0070_set_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib0070_state* }
%struct.dib0070_state = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@SYS_ISDBT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib0070_set_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0070_set_bandwidth(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dib0070_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.dib0070_state*, %struct.dib0070_state** %7, align 8
  store %struct.dib0070_state* %8, %struct.dib0070_state** %3, align 8
  %9 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %10 = call i32 @dib0070_read_reg(%struct.dib0070_state* %9, i32 2)
  %11 = and i32 %10, 16383
  store i32 %11, i32* %4, align 4
  %12 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %13 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sdiv i32 %17, 1000
  %19 = icmp sgt i32 %18, 7000
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %4, align 4
  br label %51

22:                                               ; preds = %1
  %23 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %24 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sdiv i32 %28, 1000
  %30 = icmp sgt i32 %29, 6000
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, 16384
  store i32 %33, i32* %4, align 4
  br label %50

34:                                               ; preds = %22
  %35 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %36 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sdiv i32 %40, 1000
  %42 = icmp sgt i32 %41, 5000
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, 32768
  store i32 %45, i32* %4, align 4
  br label %49

46:                                               ; preds = %34
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, 49152
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %46, %43
  br label %50

50:                                               ; preds = %49, %31
  br label %51

51:                                               ; preds = %50, %20
  %52 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @dib0070_write_reg(%struct.dib0070_state* %52, i32 2, i32 %53)
  %55 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %56 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SYS_ISDBT, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %51
  %64 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %65 = call i32 @dib0070_read_reg(%struct.dib0070_state* %64, i32 23)
  store i32 %65, i32* %5, align 4
  %66 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, 65532
  %69 = call i32 @dib0070_write_reg(%struct.dib0070_state* %66, i32 23, i32 %68)
  %70 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %71 = call i32 @dib0070_read_reg(%struct.dib0070_state* %70, i32 1)
  %72 = and i32 %71, 511
  store i32 %72, i32* %4, align 4
  %73 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = or i32 %74, 30720
  %76 = call i32 @dib0070_write_reg(%struct.dib0070_state* %73, i32 1, i32 %75)
  %77 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @dib0070_write_reg(%struct.dib0070_state* %77, i32 23, i32 %78)
  br label %80

80:                                               ; preds = %63, %51
  ret i32 0
}

declare dso_local i32 @dib0070_read_reg(%struct.dib0070_state*, i32) #1

declare dso_local i32 @dib0070_write_reg(%struct.dib0070_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
