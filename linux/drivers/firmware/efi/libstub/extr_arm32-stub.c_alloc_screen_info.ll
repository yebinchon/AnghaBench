; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_arm32-stub.c_alloc_screen_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/libstub/extr_arm32-stub.c_alloc_screen_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_info = type { i32 }

@allocate_pool = common dso_local global i32 0, align 4
@EFI_RUNTIME_SERVICES_DATA = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@install_configuration_table = common dso_local global i32 0, align 4
@screen_info_guid = common dso_local global i32 0, align 4
@free_pool = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.screen_info* @alloc_screen_info(i32* %0) #0 {
  %2 = alloca %struct.screen_info*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.screen_info*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @allocate_pool, align 4
  %7 = load i32, i32* @EFI_RUNTIME_SERVICES_DATA, align 4
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to %struct.screen_info*
  %10 = bitcast %struct.screen_info** %4 to i8**
  %11 = call i64 (i32, %struct.screen_info*, ...) @efi_call_early(i32 %6, %struct.screen_info* %9, i64 4, i8** %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @EFI_SUCCESS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store %struct.screen_info* null, %struct.screen_info** %2, align 8
  br label %29

16:                                               ; preds = %1
  %17 = load i32, i32* @install_configuration_table, align 4
  %18 = load %struct.screen_info*, %struct.screen_info** %4, align 8
  %19 = call i64 (i32, %struct.screen_info*, ...) @efi_call_early(i32 %17, %struct.screen_info* bitcast (i32* @screen_info_guid to %struct.screen_info*), %struct.screen_info* %18)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @EFI_SUCCESS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load %struct.screen_info*, %struct.screen_info** %4, align 8
  store %struct.screen_info* %24, %struct.screen_info** %2, align 8
  br label %29

25:                                               ; preds = %16
  %26 = load i32, i32* @free_pool, align 4
  %27 = load %struct.screen_info*, %struct.screen_info** %4, align 8
  %28 = call i64 (i32, %struct.screen_info*, ...) @efi_call_early(i32 %26, %struct.screen_info* %27)
  store %struct.screen_info* null, %struct.screen_info** %2, align 8
  br label %29

29:                                               ; preds = %25, %23, %15
  %30 = load %struct.screen_info*, %struct.screen_info** %2, align 8
  ret %struct.screen_info* %30
}

declare dso_local i64 @efi_call_early(i32, %struct.screen_info*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
