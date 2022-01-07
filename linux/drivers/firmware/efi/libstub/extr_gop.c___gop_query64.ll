; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_gop.c___gop_query64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_gop.c___gop_query64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efi_graphics_output_protocol_64 = type { i64, i64 }
%struct.efi_graphics_output_mode_info = type { i32 }
%struct.efi_graphics_output_protocol_mode_64 = type { i32, i32 }

@EFI_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.efi_graphics_output_protocol_64*, %struct.efi_graphics_output_mode_info**, i64*, i32*)* @__gop_query64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__gop_query64(i32* %0, %struct.efi_graphics_output_protocol_64* %1, %struct.efi_graphics_output_mode_info** %2, i64* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.efi_graphics_output_protocol_64*, align 8
  %9 = alloca %struct.efi_graphics_output_mode_info**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.efi_graphics_output_protocol_mode_64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.efi_graphics_output_protocol_64* %1, %struct.efi_graphics_output_protocol_64** %8, align 8
  store %struct.efi_graphics_output_mode_info** %2, %struct.efi_graphics_output_mode_info*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.efi_graphics_output_protocol_64*, %struct.efi_graphics_output_protocol_64** %8, align 8
  %17 = getelementptr inbounds %struct.efi_graphics_output_protocol_64, %struct.efi_graphics_output_protocol_64* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %15, align 8
  %19 = load i64, i64* %15, align 8
  %20 = inttoptr i64 %19 to %struct.efi_graphics_output_protocol_mode_64*
  store %struct.efi_graphics_output_protocol_mode_64* %20, %struct.efi_graphics_output_protocol_mode_64** %12, align 8
  %21 = load %struct.efi_graphics_output_protocol_64*, %struct.efi_graphics_output_protocol_64** %8, align 8
  %22 = getelementptr inbounds %struct.efi_graphics_output_protocol_64, %struct.efi_graphics_output_protocol_64* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %13, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = load %struct.efi_graphics_output_protocol_64*, %struct.efi_graphics_output_protocol_64** %8, align 8
  %27 = bitcast %struct.efi_graphics_output_protocol_64* %26 to i8*
  %28 = load %struct.efi_graphics_output_protocol_mode_64*, %struct.efi_graphics_output_protocol_mode_64** %12, align 8
  %29 = getelementptr inbounds %struct.efi_graphics_output_protocol_mode_64, %struct.efi_graphics_output_protocol_mode_64* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i64*, i64** %10, align 8
  %32 = load %struct.efi_graphics_output_mode_info**, %struct.efi_graphics_output_mode_info*** %9, align 8
  %33 = call i64 @__efi_call_early(i8* %25, i8* %27, i32 %30, i64* %31, %struct.efi_graphics_output_mode_info** %32)
  store i64 %33, i64* %14, align 8
  %34 = load i64, i64* %14, align 8
  %35 = load i64, i64* @EFI_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %5
  %38 = load i64, i64* %14, align 8
  store i64 %38, i64* %6, align 8
  br label %45

39:                                               ; preds = %5
  %40 = load %struct.efi_graphics_output_protocol_mode_64*, %struct.efi_graphics_output_protocol_mode_64** %12, align 8
  %41 = getelementptr inbounds %struct.efi_graphics_output_protocol_mode_64, %struct.efi_graphics_output_protocol_mode_64* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %11, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i64, i64* %14, align 8
  store i64 %44, i64* %6, align 8
  br label %45

45:                                               ; preds = %39, %37
  %46 = load i64, i64* %6, align 8
  ret i64 %46
}

declare dso_local i64 @__efi_call_early(i8*, i8*, i32, i64*, %struct.efi_graphics_output_mode_info**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
