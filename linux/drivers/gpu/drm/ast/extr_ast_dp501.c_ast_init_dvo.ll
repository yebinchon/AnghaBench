; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_dp501.c_ast_init_dvo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_dp501.c_ast_init_dvo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.ast_private* }
%struct.ast_private = type { i64 }

@AST_IO_CRTC_PORT = common dso_local global i32 0, align 4
@AST2300 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @ast_init_dvo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_init_dvo(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.ast_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  store %struct.ast_private* %8, %struct.ast_private** %3, align 8
  %9 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %10 = call i32 @ast_write32(%struct.ast_private* %9, i32 61444, i32 510525440)
  %11 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %12 = call i32 @ast_write32(%struct.ast_private* %11, i32 61440, i32 1)
  %13 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %14 = call i32 @ast_write32(%struct.ast_private* %13, i32 73728, i32 378054824)
  %15 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %16 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %17 = call i32 @ast_get_index_reg_mask(%struct.ast_private* %15, i32 %16, i32 208, i32 255)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 128
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %97, label %21

21:                                               ; preds = %1
  %22 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %23 = call i32 @ast_read32(%struct.ast_private* %22, i32 73736)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, -1793
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, 1280
  store i32 %27, i32* %5, align 4
  %28 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ast_write32(%struct.ast_private* %28, i32 73736, i32 %29)
  %31 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %32 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AST2300, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %21
  %37 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %38 = call i32 @ast_read32(%struct.ast_private* %37, i32 73860)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, -131072
  store i32 %40, i32* %5, align 4
  %41 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @ast_write32(%struct.ast_private* %41, i32 73860, i32 %42)
  %44 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %45 = call i32 @ast_read32(%struct.ast_private* %44, i32 73864)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, 1048575
  store i32 %47, i32* %5, align 4
  %48 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @ast_write32(%struct.ast_private* %48, i32 73864, i32 %49)
  %51 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %52 = call i32 @ast_read32(%struct.ast_private* %51, i32 73872)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, -49
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, 32
  store i32 %56, i32* %5, align 4
  %57 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @ast_write32(%struct.ast_private* %57, i32 73872, i32 %58)
  br label %96

60:                                               ; preds = %21
  %61 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %62 = call i32 @ast_read32(%struct.ast_private* %61, i32 73864)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, 805306368
  store i32 %64, i32* %5, align 4
  %65 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @ast_write32(%struct.ast_private* %65, i32 73864, i32 %66)
  %68 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %69 = call i32 @ast_read32(%struct.ast_private* %68, i32 73868)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = or i32 %70, 207
  store i32 %71, i32* %5, align 4
  %72 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @ast_write32(%struct.ast_private* %72, i32 73868, i32 %73)
  %75 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %76 = call i32 @ast_read32(%struct.ast_private* %75, i32 73892)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, -65536
  store i32 %78, i32* %5, align 4
  %79 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @ast_write32(%struct.ast_private* %79, i32 73892, i32 %80)
  %82 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %83 = call i32 @ast_read32(%struct.ast_private* %82, i32 73896)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, 15
  store i32 %85, i32* %5, align 4
  %86 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @ast_write32(%struct.ast_private* %86, i32 73896, i32 %87)
  %89 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %90 = call i32 @ast_read32(%struct.ast_private* %89, i32 73876)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, 2
  store i32 %92, i32* %5, align 4
  %93 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @ast_write32(%struct.ast_private* %93, i32 73876, i32 %94)
  br label %96

96:                                               ; preds = %60, %36
  br label %97

97:                                               ; preds = %96, %1
  %98 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %99 = call i32 @ast_read32(%struct.ast_private* %98, i32 73772)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = and i32 %100, -262145
  store i32 %101, i32* %5, align 4
  %102 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @ast_write32(%struct.ast_private* %102, i32 73772, i32 %103)
  %105 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %106 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %107 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %105, i32 %106, i32 163, i32 207, i32 128)
  ret i32 1
}

declare dso_local i32 @ast_write32(%struct.ast_private*, i32, i32) #1

declare dso_local i32 @ast_get_index_reg_mask(%struct.ast_private*, i32, i32, i32) #1

declare dso_local i32 @ast_read32(%struct.ast_private*, i32) #1

declare dso_local i32 @ast_set_index_reg_mask(%struct.ast_private*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
