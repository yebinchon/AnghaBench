; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_clock.c_scmi_clock_rate_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_clock.c_scmi_clock_rate_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { %struct.clock_info* }
%struct.clock_info = type { i64, i32 }
%struct.scmi_xfer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.scmi_clock_set_rate* }
%struct.scmi_clock_set_rate = type { i8*, i8*, i8*, i8* }

@CLOCK_RATE_SET = common dso_local global i32 0, align 4
@SCMI_PROTOCOL_CLOCK = common dso_local global i32 0, align 4
@CLOCK_SET_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scmi_handle*, i32, i32)* @scmi_clock_rate_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_clock_rate_set(%struct.scmi_handle* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scmi_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scmi_xfer*, align 8
  %11 = alloca %struct.scmi_clock_set_rate*, align 8
  %12 = alloca %struct.clock_info*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %14 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %13, i32 0, i32 0
  %15 = load %struct.clock_info*, %struct.clock_info** %14, align 8
  store %struct.clock_info* %15, %struct.clock_info** %12, align 8
  %16 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %17 = load i32, i32* @CLOCK_RATE_SET, align 4
  %18 = load i32, i32* @SCMI_PROTOCOL_CLOCK, align 4
  %19 = call i32 @scmi_xfer_get_init(%struct.scmi_handle* %16, i32 %17, i32 %18, i32 32, i32 0, %struct.scmi_xfer** %10)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %89

24:                                               ; preds = %3
  %25 = load %struct.clock_info*, %struct.clock_info** %12, align 8
  %26 = getelementptr inbounds %struct.clock_info, %struct.clock_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.clock_info*, %struct.clock_info** %12, align 8
  %31 = getelementptr inbounds %struct.clock_info, %struct.clock_info* %30, i32 0, i32 1
  %32 = call i64 @atomic_inc_return(i32* %31)
  %33 = load %struct.clock_info*, %struct.clock_info** %12, align 8
  %34 = getelementptr inbounds %struct.clock_info, %struct.clock_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32, i32* @CLOCK_SET_ASYNC, align 4
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %37, %29, %24
  %42 = load %struct.scmi_xfer*, %struct.scmi_xfer** %10, align 8
  %43 = getelementptr inbounds %struct.scmi_xfer, %struct.scmi_xfer* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.scmi_clock_set_rate*, %struct.scmi_clock_set_rate** %44, align 8
  store %struct.scmi_clock_set_rate* %45, %struct.scmi_clock_set_rate** %11, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i8* @cpu_to_le32(i32 %46)
  %48 = load %struct.scmi_clock_set_rate*, %struct.scmi_clock_set_rate** %11, align 8
  %49 = getelementptr inbounds %struct.scmi_clock_set_rate, %struct.scmi_clock_set_rate* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i8* @cpu_to_le32(i32 %50)
  %52 = load %struct.scmi_clock_set_rate*, %struct.scmi_clock_set_rate** %11, align 8
  %53 = getelementptr inbounds %struct.scmi_clock_set_rate, %struct.scmi_clock_set_rate* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i8* @cpu_to_le32(i32 %54)
  %56 = load %struct.scmi_clock_set_rate*, %struct.scmi_clock_set_rate** %11, align 8
  %57 = getelementptr inbounds %struct.scmi_clock_set_rate, %struct.scmi_clock_set_rate* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* %7, align 4
  %59 = ashr i32 %58, 32
  %60 = call i8* @cpu_to_le32(i32 %59)
  %61 = load %struct.scmi_clock_set_rate*, %struct.scmi_clock_set_rate** %11, align 8
  %62 = getelementptr inbounds %struct.scmi_clock_set_rate, %struct.scmi_clock_set_rate* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @CLOCK_SET_ASYNC, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %41
  %68 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %69 = load %struct.scmi_xfer*, %struct.scmi_xfer** %10, align 8
  %70 = call i32 @scmi_do_xfer_with_response(%struct.scmi_handle* %68, %struct.scmi_xfer* %69)
  store i32 %70, i32* %8, align 4
  br label %75

71:                                               ; preds = %41
  %72 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %73 = load %struct.scmi_xfer*, %struct.scmi_xfer** %10, align 8
  %74 = call i32 @scmi_do_xfer(%struct.scmi_handle* %72, %struct.scmi_xfer* %73)
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %71, %67
  %76 = load %struct.clock_info*, %struct.clock_info** %12, align 8
  %77 = getelementptr inbounds %struct.clock_info, %struct.clock_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.clock_info*, %struct.clock_info** %12, align 8
  %82 = getelementptr inbounds %struct.clock_info, %struct.clock_info* %81, i32 0, i32 1
  %83 = call i32 @atomic_dec(i32* %82)
  br label %84

84:                                               ; preds = %80, %75
  %85 = load %struct.scmi_handle*, %struct.scmi_handle** %5, align 8
  %86 = load %struct.scmi_xfer*, %struct.scmi_xfer** %10, align 8
  %87 = call i32 @scmi_xfer_put(%struct.scmi_handle* %85, %struct.scmi_xfer* %86)
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %84, %22
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @scmi_xfer_get_init(%struct.scmi_handle*, i32, i32, i32, i32, %struct.scmi_xfer**) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @scmi_do_xfer_with_response(%struct.scmi_handle*, %struct.scmi_xfer*) #1

declare dso_local i32 @scmi_do_xfer(%struct.scmi_handle*, %struct.scmi_xfer*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @scmi_xfer_put(%struct.scmi_handle*, %struct.scmi_xfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
