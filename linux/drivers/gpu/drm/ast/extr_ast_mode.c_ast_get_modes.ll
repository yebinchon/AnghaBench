; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ast_private* }
%struct.ast_private = type { i64, i32 }
%struct.ast_connector = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.edid = type { i32 }

@AST_TX_DP501 = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @ast_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.ast_connector*, align 8
  %5 = alloca %struct.ast_private*, align 8
  %6 = alloca %struct.edid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %10 = call %struct.ast_connector* @to_ast_connector(%struct.drm_connector* %9)
  store %struct.ast_connector* %10, %struct.ast_connector** %4, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %12 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.ast_private*, %struct.ast_private** %14, align 8
  store %struct.ast_private* %15, %struct.ast_private** %5, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %17 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AST_TX_DP501, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %1
  %22 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %23 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %22, i32 0, i32 1
  store i32 255, i32* %23, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.edid* @kmalloc(i32 128, i32 %24)
  store %struct.edid* %25, %struct.edid** %6, align 8
  %26 = load %struct.edid*, %struct.edid** %6, align 8
  %27 = icmp ne %struct.edid* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %80

31:                                               ; preds = %21
  %32 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %33 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load %struct.edid*, %struct.edid** %6, align 8
  %36 = bitcast %struct.edid* %35 to i32*
  %37 = call i32 @ast_dp501_read_edid(%struct.TYPE_5__* %34, i32* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %42 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = call i32 @ast_get_dp501_max_clk(%struct.TYPE_5__* %43)
  %45 = load %struct.ast_private*, %struct.ast_private** %5, align 8
  %46 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  br label %50

47:                                               ; preds = %31
  %48 = load %struct.edid*, %struct.edid** %6, align 8
  %49 = call i32 @kfree(%struct.edid* %48)
  br label %50

50:                                               ; preds = %47, %40
  br label %51

51:                                               ; preds = %50, %1
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %56 = load %struct.ast_connector*, %struct.ast_connector** %4, align 8
  %57 = getelementptr inbounds %struct.ast_connector, %struct.ast_connector* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = call %struct.edid* @drm_get_edid(%struct.drm_connector* %55, i32* %59)
  store %struct.edid* %60, %struct.edid** %6, align 8
  br label %61

61:                                               ; preds = %54, %51
  %62 = load %struct.edid*, %struct.edid** %6, align 8
  %63 = icmp ne %struct.edid* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load %struct.ast_connector*, %struct.ast_connector** %4, align 8
  %66 = getelementptr inbounds %struct.ast_connector, %struct.ast_connector* %65, i32 0, i32 0
  %67 = load %struct.edid*, %struct.edid** %6, align 8
  %68 = call i32 @drm_connector_update_edid_property(i32* %66, %struct.edid* %67)
  %69 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %70 = load %struct.edid*, %struct.edid** %6, align 8
  %71 = call i32 @drm_add_edid_modes(%struct.drm_connector* %69, %struct.edid* %70)
  store i32 %71, i32* %7, align 4
  %72 = load %struct.edid*, %struct.edid** %6, align 8
  %73 = call i32 @kfree(%struct.edid* %72)
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %2, align 4
  br label %80

75:                                               ; preds = %61
  %76 = load %struct.ast_connector*, %struct.ast_connector** %4, align 8
  %77 = getelementptr inbounds %struct.ast_connector, %struct.ast_connector* %76, i32 0, i32 0
  %78 = call i32 @drm_connector_update_edid_property(i32* %77, %struct.edid* null)
  br label %79

79:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %64, %28
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.ast_connector* @to_ast_connector(%struct.drm_connector*) #1

declare dso_local %struct.edid* @kmalloc(i32, i32) #1

declare dso_local i32 @ast_dp501_read_edid(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @ast_get_dp501_max_clk(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

declare dso_local %struct.edid* @drm_get_edid(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_connector_update_edid_property(i32*, %struct.edid*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, %struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
