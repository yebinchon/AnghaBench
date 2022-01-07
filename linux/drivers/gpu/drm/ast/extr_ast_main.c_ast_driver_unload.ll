; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_main.c_ast_driver_unload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_main.c_ast_driver_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.ast_private* }
%struct.ast_private = type { i64, i64, %struct.ast_private* }

@AST_IO_CRTC_PORT = common dso_local global i32 0, align 4
@AST_IO_MM_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ast_driver_unload(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.ast_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %4, i32 0, i32 1
  %6 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  store %struct.ast_private* %6, %struct.ast_private** %3, align 8
  %7 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %8 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %9 = call i32 @ast_set_index_reg(%struct.ast_private* %7, i32 %8, i32 161, i32 4)
  %10 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %11 = call i32 @ast_release_firmware(%struct.drm_device* %10)
  %12 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %13 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %12, i32 0, i32 2
  %14 = load %struct.ast_private*, %struct.ast_private** %13, align 8
  %15 = call i32 @kfree(%struct.ast_private* %14)
  %16 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %17 = call i32 @ast_mode_fini(%struct.drm_device* %16)
  %18 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %19 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %18)
  %20 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %21 = call i32 @ast_mm_fini(%struct.ast_private* %20)
  %22 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %23 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %26 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AST_IO_MM_OFFSET, align 8
  %29 = add nsw i64 %27, %28
  %30 = icmp ne i64 %24, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %1
  %32 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %36 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @pci_iounmap(i32 %34, i64 %37)
  br label %39

39:                                               ; preds = %31, %1
  %40 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %41 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %44 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @pci_iounmap(i32 %42, i64 %45)
  %47 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %48 = call i32 @kfree(%struct.ast_private* %47)
  ret void
}

declare dso_local i32 @ast_set_index_reg(%struct.ast_private*, i32, i32, i32) #1

declare dso_local i32 @ast_release_firmware(%struct.drm_device*) #1

declare dso_local i32 @kfree(%struct.ast_private*) #1

declare dso_local i32 @ast_mode_fini(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

declare dso_local i32 @ast_mm_fini(%struct.ast_private*) #1

declare dso_local i32 @pci_iounmap(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
