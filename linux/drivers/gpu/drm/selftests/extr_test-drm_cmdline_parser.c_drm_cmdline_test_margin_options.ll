; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_cmdline_parser.c_drm_cmdline_test_margin_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_cmdline_parser.c_drm_cmdline_test_margin_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_cmdline_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [70 x i8] c"720x480,margin_right=14,margin_left=24,margin_bottom=36,margin_top=42\00", align 1
@no_connector = common dso_local global i32 0, align 4
@DRM_FORCE_UNSPECIFIED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @drm_cmdline_test_margin_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_cmdline_test_margin_options(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.drm_cmdline_mode, align 8
  store i8* %0, i8** %2, align 8
  %4 = bitcast %struct.drm_cmdline_mode* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 64, i1 false)
  %5 = call i32 @drm_mode_parse_command_line_for_connector(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32* @no_connector, %struct.drm_cmdline_mode* %3)
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
  %26 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %3, i32 0, i32 9
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 14
  %30 = zext i1 %29 to i32
  %31 = call i32 @FAIL_ON(i32 %30)
  %32 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %3, i32 0, i32 9
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 24
  %36 = zext i1 %35 to i32
  %37 = call i32 @FAIL_ON(i32 %36)
  %38 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %3, i32 0, i32 9
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 36
  %42 = zext i1 %41 to i32
  %43 = call i32 @FAIL_ON(i32 %42)
  %44 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %3, i32 0, i32 9
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 42
  %48 = zext i1 %47 to i32
  %49 = call i32 @FAIL_ON(i32 %48)
  %50 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %3, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @FAIL_ON(i32 %51)
  %53 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %3, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @FAIL_ON(i32 %54)
  %56 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %3, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @FAIL_ON(i32 %57)
  %59 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %3, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @FAIL_ON(i32 %60)
  %62 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %3, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @FAIL_ON(i32 %63)
  %65 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %3, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @FAIL_ON(i32 %66)
  %68 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %3, i32 0, i32 8
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DRM_FORCE_UNSPECIFIED, align 8
  %71 = icmp ne i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @FAIL_ON(i32 %72)
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
