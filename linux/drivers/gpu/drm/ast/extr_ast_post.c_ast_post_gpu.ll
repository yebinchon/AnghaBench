; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ast_post_gpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ast_post_gpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.ast_private* }
%struct.ast_private = type { i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ast_use_p2a = common dso_local global i64 0, align 8
@AST2500 = common dso_local global i64 0, align 8
@AST2300 = common dso_local global i64 0, align 8
@AST2400 = common dso_local global i64 0, align 8
@AST_TX_NONE = common dso_local global i64 0, align 8
@AST_IO_CRTC_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ast_post_gpu(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ast_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.ast_private*, %struct.ast_private** %6, align 8
  store %struct.ast_private* %7, %struct.ast_private** %4, align 8
  %8 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %9 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pci_read_config_dword(i32 %12, i32 4, i32* %3)
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, 3
  store i32 %15, i32* %3, align 4
  %16 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %17 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @pci_write_config_dword(i32 %20, i32 4, i32 %21)
  %23 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %24 = call i32 @ast_enable_vga(%struct.drm_device* %23)
  %25 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %26 = call i32 @ast_open_key(%struct.ast_private* %25)
  %27 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %28 = call i32 @ast_enable_mmio(%struct.drm_device* %27)
  %29 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %30 = call i32 @ast_set_def_ext_reg(%struct.drm_device* %29)
  %31 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %32 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ast_use_p2a, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %1
  %37 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %38 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AST2500, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %44 = call i32 @ast_post_chip_2500(%struct.drm_device* %43)
  br label %64

45:                                               ; preds = %36
  %46 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %47 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @AST2300, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %53 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AST2400, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51, %45
  %58 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %59 = call i32 @ast_post_chip_2300(%struct.drm_device* %58)
  br label %63

60:                                               ; preds = %51
  %61 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %62 = call i32 @ast_init_dram_reg(%struct.drm_device* %61)
  br label %63

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %63, %42
  %65 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %66 = call i32 @ast_init_3rdtx(%struct.drm_device* %65)
  br label %78

67:                                               ; preds = %1
  %68 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %69 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @AST_TX_NONE, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.ast_private*, %struct.ast_private** %4, align 8
  %75 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %76 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %74, i32 %75, i32 163, i32 207, i32 128)
  br label %77

77:                                               ; preds = %73, %67
  br label %78

78:                                               ; preds = %77, %64
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @ast_enable_vga(%struct.drm_device*) #1

declare dso_local i32 @ast_open_key(%struct.ast_private*) #1

declare dso_local i32 @ast_enable_mmio(%struct.drm_device*) #1

declare dso_local i32 @ast_set_def_ext_reg(%struct.drm_device*) #1

declare dso_local i32 @ast_post_chip_2500(%struct.drm_device*) #1

declare dso_local i32 @ast_post_chip_2300(%struct.drm_device*) #1

declare dso_local i32 @ast_init_dram_reg(%struct.drm_device*) #1

declare dso_local i32 @ast_init_3rdtx(%struct.drm_device*) #1

declare dso_local i32 @ast_set_index_reg_mask(%struct.ast_private*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
