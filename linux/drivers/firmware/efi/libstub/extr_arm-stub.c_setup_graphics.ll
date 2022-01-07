; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_arm-stub.c_setup_graphics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_arm-stub.c_setup_graphics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_info = type { i32 }

@EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID = common dso_local global i32 0, align 4
@locate_handle = common dso_local global i32 0, align 4
@EFI_LOCATE_BY_PROTOCOL = common dso_local global i32 0, align 4
@EFI_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.screen_info* (i32*)* @setup_graphics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.screen_info* @setup_graphics(i32* %0) #0 {
  %2 = alloca %struct.screen_info*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.screen_info*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32, i32* @EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID, align 4
  store i32 %9, i32* %4, align 4
  store i8** null, i8*** %7, align 8
  store %struct.screen_info* null, %struct.screen_info** %8, align 8
  store i64 0, i64* %6, align 8
  %10 = load i32, i32* @locate_handle, align 4
  %11 = load i32, i32* @EFI_LOCATE_BY_PROTOCOL, align 4
  %12 = load i8**, i8*** %7, align 8
  %13 = call i64 @efi_call_early(i32 %10, i32 %11, i32* %4, i32* null, i64* %6, i8** %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @EFI_BUFFER_TOO_SMALL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call %struct.screen_info* @alloc_screen_info(i32* %18)
  store %struct.screen_info* %19, %struct.screen_info** %8, align 8
  %20 = load %struct.screen_info*, %struct.screen_info** %8, align 8
  %21 = icmp ne %struct.screen_info* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store %struct.screen_info* null, %struct.screen_info** %2, align 8
  br label %30

23:                                               ; preds = %17
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.screen_info*, %struct.screen_info** %8, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @efi_setup_gop(i32* %24, %struct.screen_info* %25, i32* %4, i64 %26)
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.screen_info*, %struct.screen_info** %8, align 8
  store %struct.screen_info* %29, %struct.screen_info** %2, align 8
  br label %30

30:                                               ; preds = %28, %22
  %31 = load %struct.screen_info*, %struct.screen_info** %2, align 8
  ret %struct.screen_info* %31
}

declare dso_local i64 @efi_call_early(i32, i32, i32*, i32*, i64*, i8**) #1

declare dso_local %struct.screen_info* @alloc_screen_info(i32*) #1

declare dso_local i32 @efi_setup_gop(i32*, %struct.screen_info*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
