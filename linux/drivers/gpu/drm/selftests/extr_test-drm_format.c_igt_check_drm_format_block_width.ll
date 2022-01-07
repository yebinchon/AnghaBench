; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_format.c_igt_check_drm_format_block_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_format.c_igt_check_drm_format_block_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_format_info = type { i32 }

@DRM_FORMAT_XRGB4444 = common dso_local global i32 0, align 4
@DRM_FORMAT_NV12 = common dso_local global i32 0, align 4
@DRM_FORMAT_YUV422 = common dso_local global i32 0, align 4
@DRM_FORMAT_X0L0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igt_check_drm_format_block_width(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.drm_format_info*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.drm_format_info* null, %struct.drm_format_info** %3, align 8
  %4 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %5 = call i32 @drm_format_info_block_width(%struct.drm_format_info* %4, i32 0)
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @FAIL_ON(i32 %7)
  %9 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %10 = call i32 @drm_format_info_block_width(%struct.drm_format_info* %9, i32 -1)
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @FAIL_ON(i32 %12)
  %14 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %15 = call i32 @drm_format_info_block_width(%struct.drm_format_info* %14, i32 1)
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @FAIL_ON(i32 %17)
  %19 = load i32, i32* @DRM_FORMAT_XRGB4444, align 4
  %20 = call %struct.drm_format_info* @drm_format_info(i32 %19)
  store %struct.drm_format_info* %20, %struct.drm_format_info** %3, align 8
  %21 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %22 = icmp ne %struct.drm_format_info* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @FAIL_ON(i32 %24)
  %26 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %27 = call i32 @drm_format_info_block_width(%struct.drm_format_info* %26, i32 0)
  %28 = icmp ne i32 %27, 1
  %29 = zext i1 %28 to i32
  %30 = call i32 @FAIL_ON(i32 %29)
  %31 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %32 = call i32 @drm_format_info_block_width(%struct.drm_format_info* %31, i32 1)
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @FAIL_ON(i32 %34)
  %36 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %37 = call i32 @drm_format_info_block_width(%struct.drm_format_info* %36, i32 -1)
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @FAIL_ON(i32 %39)
  %41 = load i32, i32* @DRM_FORMAT_NV12, align 4
  %42 = call %struct.drm_format_info* @drm_format_info(i32 %41)
  store %struct.drm_format_info* %42, %struct.drm_format_info** %3, align 8
  %43 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %44 = icmp ne %struct.drm_format_info* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @FAIL_ON(i32 %46)
  %48 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %49 = call i32 @drm_format_info_block_width(%struct.drm_format_info* %48, i32 0)
  %50 = icmp ne i32 %49, 1
  %51 = zext i1 %50 to i32
  %52 = call i32 @FAIL_ON(i32 %51)
  %53 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %54 = call i32 @drm_format_info_block_width(%struct.drm_format_info* %53, i32 1)
  %55 = icmp ne i32 %54, 1
  %56 = zext i1 %55 to i32
  %57 = call i32 @FAIL_ON(i32 %56)
  %58 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %59 = call i32 @drm_format_info_block_width(%struct.drm_format_info* %58, i32 2)
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @FAIL_ON(i32 %61)
  %63 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %64 = call i32 @drm_format_info_block_width(%struct.drm_format_info* %63, i32 -1)
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @FAIL_ON(i32 %66)
  %68 = load i32, i32* @DRM_FORMAT_YUV422, align 4
  %69 = call %struct.drm_format_info* @drm_format_info(i32 %68)
  store %struct.drm_format_info* %69, %struct.drm_format_info** %3, align 8
  %70 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %71 = icmp ne %struct.drm_format_info* %70, null
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @FAIL_ON(i32 %73)
  %75 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %76 = call i32 @drm_format_info_block_width(%struct.drm_format_info* %75, i32 0)
  %77 = icmp ne i32 %76, 1
  %78 = zext i1 %77 to i32
  %79 = call i32 @FAIL_ON(i32 %78)
  %80 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %81 = call i32 @drm_format_info_block_width(%struct.drm_format_info* %80, i32 1)
  %82 = icmp ne i32 %81, 1
  %83 = zext i1 %82 to i32
  %84 = call i32 @FAIL_ON(i32 %83)
  %85 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %86 = call i32 @drm_format_info_block_width(%struct.drm_format_info* %85, i32 2)
  %87 = icmp ne i32 %86, 1
  %88 = zext i1 %87 to i32
  %89 = call i32 @FAIL_ON(i32 %88)
  %90 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %91 = call i32 @drm_format_info_block_width(%struct.drm_format_info* %90, i32 3)
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @FAIL_ON(i32 %93)
  %95 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %96 = call i32 @drm_format_info_block_width(%struct.drm_format_info* %95, i32 -1)
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @FAIL_ON(i32 %98)
  %100 = load i32, i32* @DRM_FORMAT_X0L0, align 4
  %101 = call %struct.drm_format_info* @drm_format_info(i32 %100)
  store %struct.drm_format_info* %101, %struct.drm_format_info** %3, align 8
  %102 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %103 = icmp ne %struct.drm_format_info* %102, null
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i32 @FAIL_ON(i32 %105)
  %107 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %108 = call i32 @drm_format_info_block_width(%struct.drm_format_info* %107, i32 0)
  %109 = icmp ne i32 %108, 2
  %110 = zext i1 %109 to i32
  %111 = call i32 @FAIL_ON(i32 %110)
  %112 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %113 = call i32 @drm_format_info_block_width(%struct.drm_format_info* %112, i32 1)
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 @FAIL_ON(i32 %115)
  %117 = load %struct.drm_format_info*, %struct.drm_format_info** %3, align 8
  %118 = call i32 @drm_format_info_block_width(%struct.drm_format_info* %117, i32 -1)
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i32
  %121 = call i32 @FAIL_ON(i32 %120)
  ret i32 0
}

declare dso_local i32 @FAIL_ON(i32) #1

declare dso_local i32 @drm_format_info_block_width(%struct.drm_format_info*, i32) #1

declare dso_local %struct.drm_format_info* @drm_format_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
