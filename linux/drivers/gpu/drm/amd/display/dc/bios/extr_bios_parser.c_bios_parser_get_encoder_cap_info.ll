; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_bios_parser_get_encoder_cap_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_bios_parser_get_encoder_cap_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_bios = type { i32 }
%struct.bp_encoder_cap_info = type { i32, i32, i32 }
%struct.graphics_object_id = type { i32 }
%struct.bios_parser = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@BP_RESULT_BADINPUT = common dso_local global i32 0, align 4
@BP_RESULT_NORECORD = common dso_local global i32 0, align 4
@BP_RESULT_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_bios*, i32, %struct.bp_encoder_cap_info*)* @bios_parser_get_encoder_cap_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bios_parser_get_encoder_cap_info(%struct.dc_bios* %0, i32 %1, %struct.bp_encoder_cap_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.graphics_object_id, align 4
  %6 = alloca %struct.dc_bios*, align 8
  %7 = alloca %struct.bp_encoder_cap_info*, align 8
  %8 = alloca %struct.bios_parser*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %5, i32 0, i32 0
  store i32 %1, i32* %11, align 4
  store %struct.dc_bios* %0, %struct.dc_bios** %6, align 8
  store %struct.bp_encoder_cap_info* %2, %struct.bp_encoder_cap_info** %7, align 8
  %12 = load %struct.dc_bios*, %struct.dc_bios** %6, align 8
  %13 = call %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios* %12)
  store %struct.bios_parser* %13, %struct.bios_parser** %8, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %10, align 8
  %14 = load %struct.bp_encoder_cap_info*, %struct.bp_encoder_cap_info** %7, align 8
  %15 = icmp ne %struct.bp_encoder_cap_info* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @BP_RESULT_BADINPUT, align 4
  store i32 %17, i32* %4, align 4
  br label %52

18:                                               ; preds = %3
  %19 = load %struct.bios_parser*, %struct.bios_parser** %8, align 8
  %20 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @get_bios_object(%struct.bios_parser* %19, i32 %21)
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @BP_RESULT_BADINPUT, align 4
  store i32 %26, i32* %4, align 4
  br label %52

27:                                               ; preds = %18
  %28 = load %struct.bios_parser*, %struct.bios_parser** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call %struct.TYPE_3__* @get_encoder_cap_record(%struct.bios_parser* %28, i32* %29)
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %10, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %32 = icmp ne %struct.TYPE_3__* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @BP_RESULT_NORECORD, align 4
  store i32 %34, i32* %4, align 4
  br label %52

35:                                               ; preds = %27
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bp_encoder_cap_info*, %struct.bp_encoder_cap_info** %7, align 8
  %40 = getelementptr inbounds %struct.bp_encoder_cap_info, %struct.bp_encoder_cap_info* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.bp_encoder_cap_info*, %struct.bp_encoder_cap_info** %7, align 8
  %45 = getelementptr inbounds %struct.bp_encoder_cap_info, %struct.bp_encoder_cap_info* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bp_encoder_cap_info*, %struct.bp_encoder_cap_info** %7, align 8
  %50 = getelementptr inbounds %struct.bp_encoder_cap_info, %struct.bp_encoder_cap_info* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @BP_RESULT_OK, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %35, %33, %25, %16
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.bios_parser* @BP_FROM_DCB(%struct.dc_bios*) #1

declare dso_local i32* @get_bios_object(%struct.bios_parser*, i32) #1

declare dso_local %struct.TYPE_3__* @get_encoder_cap_record(%struct.bios_parser*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
