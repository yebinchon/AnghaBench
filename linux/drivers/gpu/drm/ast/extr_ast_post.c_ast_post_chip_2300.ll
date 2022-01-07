; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ast_post_chip_2300.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ast_post_chip_2300.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.ast_private* }
%struct.ast_private = type { i32 }
%struct.ast2300_dram_param = type { i32, i64, i32, i32 }

@AST_IO_CRTC_PORT = common dso_local global i32 0, align 4
@AST_DDR3 = common dso_local global i64 0, align 8
@AST_DDR2 = common dso_local global i64 0, align 8
@AST_DRAM_512Mx16 = common dso_local global i32 0, align 4
@AST_DRAM_1Gx16 = common dso_local global i32 0, align 4
@AST_DRAM_2Gx16 = common dso_local global i32 0, align 4
@AST_DRAM_4Gx16 = common dso_local global i32 0, align 4
@AST_VIDMEM_SIZE_8M = common dso_local global i32 0, align 4
@AST_VIDMEM_SIZE_16M = common dso_local global i32 0, align 4
@AST_VIDMEM_SIZE_32M = common dso_local global i32 0, align 4
@AST_VIDMEM_SIZE_64M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @ast_post_chip_2300 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ast_post_chip_2300(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.ast_private*, align 8
  %4 = alloca %struct.ast2300_dram_param, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.ast_private*, %struct.ast_private** %8, align 8
  store %struct.ast_private* %9, %struct.ast_private** %3, align 8
  %10 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %11 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %12 = call i32 @ast_get_index_reg_mask(%struct.ast_private* %10, i32 %11, i32 208, i32 255)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 128
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %109

16:                                               ; preds = %1
  %17 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %18 = call i32 @ast_write32(%struct.ast_private* %17, i32 61444, i32 510525440)
  %19 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %20 = call i32 @ast_write32(%struct.ast_private* %19, i32 61440, i32 1)
  %21 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %22 = call i32 @ast_write32(%struct.ast_private* %21, i32 73728, i32 378054824)
  br label %23

23:                                               ; preds = %24, %16
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %26 = call i32 @ast_read32(%struct.ast_private* %25, i32 73728)
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %23, label %28

28:                                               ; preds = %24
  %29 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %30 = call i32 @ast_write32(%struct.ast_private* %29, i32 65536, i32 -60816631)
  br label %31

31:                                               ; preds = %32, %28
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %34 = call i32 @ast_read32(%struct.ast_private* %33, i32 65536)
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %31, label %36

36:                                               ; preds = %32
  %37 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %38 = call i32 @ast_read32(%struct.ast_private* %37, i32 73736)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, 115
  store i32 %40, i32* %5, align 4
  %41 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @ast_write32(%struct.ast_private* %41, i32 73736, i32 %42)
  %44 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %4, i32 0, i32 0
  store i32 396, i32* %44, align 8
  %45 = load i64, i64* @AST_DDR3, align 8
  %46 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %4, i32 0, i32 1
  store i64 %45, i64* %46, align 8
  %47 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %48 = call i32 @ast_mindwm(%struct.ast_private* %47, i32 510533744)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, 16777216
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %36
  %53 = load i64, i64* @AST_DDR2, align 8
  %54 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %4, i32 0, i32 1
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %52, %36
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, 402653184
  switch i32 %57, label %61 [
    i32 0, label %58
    i32 134217728, label %62
    i32 268435456, label %65
    i32 402653184, label %68
  ]

58:                                               ; preds = %55
  %59 = load i32, i32* @AST_DRAM_512Mx16, align 4
  %60 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %4, i32 0, i32 3
  store i32 %59, i32* %60, align 4
  br label %71

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %55, %61
  %63 = load i32, i32* @AST_DRAM_1Gx16, align 4
  %64 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %4, i32 0, i32 3
  store i32 %63, i32* %64, align 4
  br label %71

65:                                               ; preds = %55
  %66 = load i32, i32* @AST_DRAM_2Gx16, align 4
  %67 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %4, i32 0, i32 3
  store i32 %66, i32* %67, align 4
  br label %71

68:                                               ; preds = %55
  %69 = load i32, i32* @AST_DRAM_4Gx16, align 4
  %70 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %4, i32 0, i32 3
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %65, %62, %58
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, 12
  switch i32 %73, label %74 [
    i32 0, label %75
    i32 4, label %78
    i32 8, label %81
    i32 12, label %84
  ]

74:                                               ; preds = %71
  br label %75

75:                                               ; preds = %71, %74
  %76 = load i32, i32* @AST_VIDMEM_SIZE_8M, align 4
  %77 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %4, i32 0, i32 2
  store i32 %76, i32* %77, align 8
  br label %87

78:                                               ; preds = %71
  %79 = load i32, i32* @AST_VIDMEM_SIZE_16M, align 4
  %80 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %4, i32 0, i32 2
  store i32 %79, i32* %80, align 8
  br label %87

81:                                               ; preds = %71
  %82 = load i32, i32* @AST_VIDMEM_SIZE_32M, align 4
  %83 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %4, i32 0, i32 2
  store i32 %82, i32* %83, align 8
  br label %87

84:                                               ; preds = %71
  %85 = load i32, i32* @AST_VIDMEM_SIZE_64M, align 4
  %86 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %4, i32 0, i32 2
  store i32 %85, i32* %86, align 8
  br label %87

87:                                               ; preds = %84, %81, %78, %75
  %88 = getelementptr inbounds %struct.ast2300_dram_param, %struct.ast2300_dram_param* %4, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @AST_DDR3, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %94 = call i32 @get_ddr3_info(%struct.ast_private* %93, %struct.ast2300_dram_param* %4)
  %95 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %96 = call i32 @ddr3_init(%struct.ast_private* %95, %struct.ast2300_dram_param* %4)
  br label %102

97:                                               ; preds = %87
  %98 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %99 = call i32 @get_ddr2_info(%struct.ast_private* %98, %struct.ast2300_dram_param* %4)
  %100 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %101 = call i32 @ddr2_init(%struct.ast_private* %100, %struct.ast2300_dram_param* %4)
  br label %102

102:                                              ; preds = %97, %92
  %103 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %104 = call i32 @ast_mindwm(%struct.ast_private* %103, i32 510533696)
  store i32 %104, i32* %5, align 4
  %105 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %106 = load i32, i32* %5, align 4
  %107 = or i32 %106, 64
  %108 = call i32 @ast_moutdwm(%struct.ast_private* %105, i32 510533696, i32 %107)
  br label %109

109:                                              ; preds = %102, %1
  br label %110

110:                                              ; preds = %114, %109
  %111 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %112 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %113 = call i32 @ast_get_index_reg_mask(%struct.ast_private* %111, i32 %112, i32 208, i32 255)
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %110
  %115 = load i32, i32* %6, align 4
  %116 = and i32 %115, 64
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %110, label %118

118:                                              ; preds = %114
  ret void
}

declare dso_local i32 @ast_get_index_reg_mask(%struct.ast_private*, i32, i32, i32) #1

declare dso_local i32 @ast_write32(%struct.ast_private*, i32, i32) #1

declare dso_local i32 @ast_read32(%struct.ast_private*, i32) #1

declare dso_local i32 @ast_mindwm(%struct.ast_private*, i32) #1

declare dso_local i32 @get_ddr3_info(%struct.ast_private*, %struct.ast2300_dram_param*) #1

declare dso_local i32 @ddr3_init(%struct.ast_private*, %struct.ast2300_dram_param*) #1

declare dso_local i32 @get_ddr2_info(%struct.ast_private*, %struct.ast2300_dram_param*) #1

declare dso_local i32 @ddr2_init(%struct.ast_private*, %struct.ast2300_dram_param*) #1

declare dso_local i32 @ast_moutdwm(%struct.ast_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
