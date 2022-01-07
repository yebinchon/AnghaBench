; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser2.c_bios_parser_create_integrated_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser2.c_bios_parser_create_integrated_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.integrated_info = type { i32 }
%struct.dc_bios = type { i32 }
%struct.bios_parser = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.integrated_info* (%struct.dc_bios*)* @bios_parser_create_integrated_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.integrated_info* @bios_parser_create_integrated_info(%struct.dc_bios* %0) #0 {
  %2 = alloca %struct.integrated_info*, align 8
  %3 = alloca %struct.dc_bios*, align 8
  %4 = alloca %struct.bios_parser*, align 8
  %5 = alloca %struct.integrated_info*, align 8
  store %struct.dc_bios* %0, %struct.dc_bios** %3, align 8
  %6 = load %struct.dc_bios*, %struct.dc_bios** %3, align 8
  %7 = call %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios* %6)
  store %struct.bios_parser* %7, %struct.bios_parser** %4, align 8
  store %struct.integrated_info* null, %struct.integrated_info** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.integrated_info* @kzalloc(i32 4, i32 %8)
  store %struct.integrated_info* %9, %struct.integrated_info** %5, align 8
  %10 = load %struct.integrated_info*, %struct.integrated_info** %5, align 8
  %11 = icmp eq %struct.integrated_info* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @ASSERT_CRITICAL(i32 0)
  store %struct.integrated_info* null, %struct.integrated_info** %2, align 8
  br label %25

14:                                               ; preds = %1
  %15 = load %struct.bios_parser*, %struct.bios_parser** %4, align 8
  %16 = load %struct.integrated_info*, %struct.integrated_info** %5, align 8
  %17 = call i64 @construct_integrated_info(%struct.bios_parser* %15, %struct.integrated_info* %16)
  %18 = load i64, i64* @BP_RESULT_OK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load %struct.integrated_info*, %struct.integrated_info** %5, align 8
  store %struct.integrated_info* %21, %struct.integrated_info** %2, align 8
  br label %25

22:                                               ; preds = %14
  %23 = load %struct.integrated_info*, %struct.integrated_info** %5, align 8
  %24 = call i32 @kfree(%struct.integrated_info* %23)
  store %struct.integrated_info* null, %struct.integrated_info** %2, align 8
  br label %25

25:                                               ; preds = %22, %20, %12
  %26 = load %struct.integrated_info*, %struct.integrated_info** %2, align 8
  ret %struct.integrated_info* %26
}

declare dso_local %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios*) #1

declare dso_local %struct.integrated_info* @kzalloc(i32, i32) #1

declare dso_local i32 @ASSERT_CRITICAL(i32) #1

declare dso_local i64 @construct_integrated_info(%struct.bios_parser*, %struct.integrated_info*) #1

declare dso_local i32 @kfree(%struct.integrated_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
