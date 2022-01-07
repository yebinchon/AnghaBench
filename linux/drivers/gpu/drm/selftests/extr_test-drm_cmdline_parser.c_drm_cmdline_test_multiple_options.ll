; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_cmdline_parser.c_drm_cmdline_test_multiple_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_cmdline_parser.c_drm_cmdline_test_multiple_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_cmdline_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"720x480,rotate=270,reflect_x\00", align 1
@no_connector = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_270 = common dso_local global i32 0, align 4
@DRM_MODE_REFLECT_X = common dso_local global i32 0, align 4
@DRM_FORCE_UNSPECIFIED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @drm_cmdline_test_multiple_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_cmdline_test_multiple_options(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.drm_cmdline_mode, align 8
  store i8* %0, i8** %2, align 8
  %4 = bitcast %struct.drm_cmdline_mode* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 56, i1 false)
  %5 = call i32 @drm_mode_parse_command_line_for_connector(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32* @no_connector, %struct.drm_cmdline_mode* %3)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @FAIL_ON(i32 %8)
  %10 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %3, i32 0, i32 10
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @FAIL_ON(i32 %14)
  %16 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %3, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 720
  %19 = zext i1 %18 to i32
  %20 = call i32 @FAIL_ON(i32 %19)
  %21 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %3, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 480
  %24 = zext i1 %23 to i32
  %25 = call i32 @FAIL_ON(i32 %24)
  %26 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %3, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @DRM_MODE_ROTATE_270, align 4
  %29 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %30 = or i32 %28, %29
  %31 = icmp ne i32 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @FAIL_ON(i32 %32)
  %34 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %3, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @FAIL_ON(i32 %35)
  %37 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %3, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @FAIL_ON(i32 %38)
  %40 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %3, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @FAIL_ON(i32 %41)
  %43 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %3, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @FAIL_ON(i32 %44)
  %46 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %3, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @FAIL_ON(i32 %47)
  %49 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %3, i32 0, i32 8
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @FAIL_ON(i32 %50)
  %52 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %3, i32 0, i32 9
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DRM_FORCE_UNSPECIFIED, align 8
  %55 = icmp ne i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @FAIL_ON(i32 %56)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @FAIL_ON(i32) #2

declare dso_local i32 @drm_mode_parse_command_line_for_connector(i8*, i32*, %struct.drm_cmdline_mode*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
