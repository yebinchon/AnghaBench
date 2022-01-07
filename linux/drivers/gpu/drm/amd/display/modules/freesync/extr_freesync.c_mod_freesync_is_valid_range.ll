; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_mod_freesync_is_valid_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_mod_freesync_is_valid_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_freesync = type { i32 }
%struct.dc_stream_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mod_freesync_is_valid_range(%struct.mod_freesync* %0, %struct.dc_stream_state* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mod_freesync*, align 8
  %9 = alloca %struct.dc_stream_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.mod_freesync* %0, %struct.mod_freesync** %8, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.dc_stream_state*, %struct.dc_stream_state** %9, align 8
  %16 = call i64 @mod_freesync_calc_nominal_field_rate(%struct.dc_stream_state* %15)
  store i64 %16, i64* %14, align 8
  %17 = load i64, i64* %14, align 8
  %18 = add i64 %17, 500000
  %19 = call i64 @div_u64(i64 %18, i32 1000000)
  store i64 %19, i64* %14, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sdiv i32 %20, 1000000
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = sdiv i32 %22, 1000000
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = sdiv i32 %24, 1000000
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = sdiv i32 %26, 1000000
  store i32 %27, i32* %13, align 4
  %28 = load i64, i64* %14, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ugt i64 %28, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %6
  %33 = load i64, i64* %14, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %6
  store i32 0, i32* %7, align 4
  br label %80

38:                                               ; preds = %32
  %39 = load i64, i64* %14, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i64, i64* %14, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  br label %80

51:                                               ; preds = %46
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %51
  store i32 0, i32* %7, align 4
  br label %80

60:                                               ; preds = %55
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64, %60
  store i32 0, i32* %7, align 4
  br label %80

69:                                               ; preds = %64
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %12, align 4
  %76 = sub nsw i32 %74, %75
  %77 = icmp slt i32 %76, 10
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 0, i32* %7, align 4
  br label %80

79:                                               ; preds = %73, %69
  store i32 1, i32* %7, align 4
  br label %80

80:                                               ; preds = %79, %78, %68, %59, %50, %37
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i64 @mod_freesync_calc_nominal_field_rate(%struct.dc_stream_state*) #1

declare dso_local i64 @div_u64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
