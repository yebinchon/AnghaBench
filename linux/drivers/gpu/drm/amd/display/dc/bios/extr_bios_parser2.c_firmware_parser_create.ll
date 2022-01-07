; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser2.c_firmware_parser_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser2.c_firmware_parser_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_bios = type { i32 }
%struct.bp_init_data = type { i32 }
%struct.bios_parser = type { %struct.dc_bios }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dc_bios* @firmware_parser_create(%struct.bp_init_data* %0, i32 %1) #0 {
  %3 = alloca %struct.dc_bios*, align 8
  %4 = alloca %struct.bp_init_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bios_parser*, align 8
  store %struct.bp_init_data* %0, %struct.bp_init_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bios_parser* null, %struct.bios_parser** %6, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.bios_parser* @kzalloc(i32 4, i32 %7)
  store %struct.bios_parser* %8, %struct.bios_parser** %6, align 8
  %9 = load %struct.bios_parser*, %struct.bios_parser** %6, align 8
  %10 = icmp ne %struct.bios_parser* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.dc_bios* null, %struct.dc_bios** %3, align 8
  br label %24

12:                                               ; preds = %2
  %13 = load %struct.bios_parser*, %struct.bios_parser** %6, align 8
  %14 = load %struct.bp_init_data*, %struct.bp_init_data** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @bios_parser_construct(%struct.bios_parser* %13, %struct.bp_init_data* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.bios_parser*, %struct.bios_parser** %6, align 8
  %20 = getelementptr inbounds %struct.bios_parser, %struct.bios_parser* %19, i32 0, i32 0
  store %struct.dc_bios* %20, %struct.dc_bios** %3, align 8
  br label %24

21:                                               ; preds = %12
  %22 = load %struct.bios_parser*, %struct.bios_parser** %6, align 8
  %23 = call i32 @kfree(%struct.bios_parser* %22)
  store %struct.dc_bios* null, %struct.dc_bios** %3, align 8
  br label %24

24:                                               ; preds = %21, %18, %11
  %25 = load %struct.dc_bios*, %struct.dc_bios** %3, align 8
  ret %struct.dc_bios* %25
}

declare dso_local %struct.bios_parser* @kzalloc(i32, i32) #1

declare dso_local i64 @bios_parser_construct(%struct.bios_parser*, %struct.bp_init_data*, i32) #1

declare dso_local i32 @kfree(%struct.bios_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
