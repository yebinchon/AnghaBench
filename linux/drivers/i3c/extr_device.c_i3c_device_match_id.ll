; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_device.c_i3c_device_match_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_device.c_i3c_device_match_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_device = type { i32 }
%struct.i3c_device_id = type { i32, i64, i64, i64, i64 }
%struct.i3c_device_info = type { i64, i32 }

@I3C_MATCH_MANUF_AND_PART = common dso_local global i32 0, align 4
@I3C_MATCH_EXTRA_INFO = common dso_local global i32 0, align 4
@I3C_MATCH_DCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i3c_device_id* @i3c_device_match_id(%struct.i3c_device* %0, %struct.i3c_device_id* %1) #0 {
  %3 = alloca %struct.i3c_device_id*, align 8
  %4 = alloca %struct.i3c_device*, align 8
  %5 = alloca %struct.i3c_device_id*, align 8
  %6 = alloca %struct.i3c_device_info, align 8
  %7 = alloca %struct.i3c_device_id*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.i3c_device* %0, %struct.i3c_device** %4, align 8
  store %struct.i3c_device_id* %1, %struct.i3c_device_id** %5, align 8
  %11 = load %struct.i3c_device*, %struct.i3c_device** %4, align 8
  %12 = call i32 @i3c_device_get_info(%struct.i3c_device* %11, %struct.i3c_device_info* %6)
  %13 = getelementptr inbounds %struct.i3c_device_info, %struct.i3c_device_info* %6, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @I3C_PID_RND_LOWER_32BITS(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %75, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.i3c_device_info, %struct.i3c_device_info* %6, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @I3C_PID_MANUF_ID(i32 %19)
  store i64 %20, i64* %8, align 8
  %21 = getelementptr inbounds %struct.i3c_device_info, %struct.i3c_device_info* %6, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @I3C_PID_PART_ID(i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = getelementptr inbounds %struct.i3c_device_info, %struct.i3c_device_info* %6, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @I3C_PID_EXTRA_INFO(i32 %25)
  store i64 %26, i64* %10, align 8
  %27 = load %struct.i3c_device_id*, %struct.i3c_device_id** %5, align 8
  store %struct.i3c_device_id* %27, %struct.i3c_device_id** %7, align 8
  br label %28

28:                                               ; preds = %71, %17
  %29 = load %struct.i3c_device_id*, %struct.i3c_device_id** %7, align 8
  %30 = getelementptr inbounds %struct.i3c_device_id, %struct.i3c_device_id* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %74

33:                                               ; preds = %28
  %34 = load %struct.i3c_device_id*, %struct.i3c_device_id** %7, align 8
  %35 = getelementptr inbounds %struct.i3c_device_id, %struct.i3c_device_id* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @I3C_MATCH_MANUF_AND_PART, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @I3C_MATCH_MANUF_AND_PART, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %71

42:                                               ; preds = %33
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.i3c_device_id*, %struct.i3c_device_id** %7, align 8
  %45 = getelementptr inbounds %struct.i3c_device_id, %struct.i3c_device_id* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.i3c_device_id*, %struct.i3c_device_id** %7, align 8
  %51 = getelementptr inbounds %struct.i3c_device_id, %struct.i3c_device_id* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48, %42
  br label %71

55:                                               ; preds = %48
  %56 = load %struct.i3c_device_id*, %struct.i3c_device_id** %7, align 8
  %57 = getelementptr inbounds %struct.i3c_device_id, %struct.i3c_device_id* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @I3C_MATCH_EXTRA_INFO, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load i64, i64* %10, align 8
  %64 = load %struct.i3c_device_id*, %struct.i3c_device_id** %7, align 8
  %65 = getelementptr inbounds %struct.i3c_device_id, %struct.i3c_device_id* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %71

69:                                               ; preds = %62, %55
  %70 = load %struct.i3c_device_id*, %struct.i3c_device_id** %7, align 8
  store %struct.i3c_device_id* %70, %struct.i3c_device_id** %3, align 8
  br label %103

71:                                               ; preds = %68, %54, %41
  %72 = load %struct.i3c_device_id*, %struct.i3c_device_id** %7, align 8
  %73 = getelementptr inbounds %struct.i3c_device_id, %struct.i3c_device_id* %72, i32 1
  store %struct.i3c_device_id* %73, %struct.i3c_device_id** %7, align 8
  br label %28

74:                                               ; preds = %28
  br label %75

75:                                               ; preds = %74, %2
  %76 = load %struct.i3c_device_id*, %struct.i3c_device_id** %5, align 8
  store %struct.i3c_device_id* %76, %struct.i3c_device_id** %7, align 8
  br label %77

77:                                               ; preds = %99, %75
  %78 = load %struct.i3c_device_id*, %struct.i3c_device_id** %7, align 8
  %79 = getelementptr inbounds %struct.i3c_device_id, %struct.i3c_device_id* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %77
  %83 = load %struct.i3c_device_id*, %struct.i3c_device_id** %7, align 8
  %84 = getelementptr inbounds %struct.i3c_device_id, %struct.i3c_device_id* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @I3C_MATCH_DCR, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %82
  %90 = load %struct.i3c_device_id*, %struct.i3c_device_id** %7, align 8
  %91 = getelementptr inbounds %struct.i3c_device_id, %struct.i3c_device_id* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.i3c_device_info, %struct.i3c_device_info* %6, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %92, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load %struct.i3c_device_id*, %struct.i3c_device_id** %7, align 8
  store %struct.i3c_device_id* %97, %struct.i3c_device_id** %3, align 8
  br label %103

98:                                               ; preds = %89, %82
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.i3c_device_id*, %struct.i3c_device_id** %7, align 8
  %101 = getelementptr inbounds %struct.i3c_device_id, %struct.i3c_device_id* %100, i32 1
  store %struct.i3c_device_id* %101, %struct.i3c_device_id** %7, align 8
  br label %77

102:                                              ; preds = %77
  store %struct.i3c_device_id* null, %struct.i3c_device_id** %3, align 8
  br label %103

103:                                              ; preds = %102, %96, %69
  %104 = load %struct.i3c_device_id*, %struct.i3c_device_id** %3, align 8
  ret %struct.i3c_device_id* %104
}

declare dso_local i32 @i3c_device_get_info(%struct.i3c_device*, %struct.i3c_device_info*) #1

declare dso_local i32 @I3C_PID_RND_LOWER_32BITS(i32) #1

declare dso_local i64 @I3C_PID_MANUF_ID(i32) #1

declare dso_local i64 @I3C_PID_PART_ID(i32) #1

declare dso_local i64 @I3C_PID_EXTRA_INFO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
