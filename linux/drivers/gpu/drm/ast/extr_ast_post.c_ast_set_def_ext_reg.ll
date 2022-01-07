; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ast_set_def_ext_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ast_set_def_ext_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__*, %struct.ast_private* }
%struct.TYPE_2__ = type { i32 }
%struct.ast_private = type { i64 }

@AST_IO_CRTC_PORT = common dso_local global i32 0, align 4
@AST2300 = common dso_local global i64 0, align 8
@AST2400 = common dso_local global i64 0, align 8
@AST2500 = common dso_local global i64 0, align 8
@extreginfo_ast2300 = common dso_local global i32* null, align 8
@extreginfo_ast2300a0 = common dso_local global i32* null, align 8
@extreginfo = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @ast_set_def_ext_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ast_set_def_ext_reg(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.ast_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 1
  %10 = load %struct.ast_private*, %struct.ast_private** %9, align 8
  store %struct.ast_private* %10, %struct.ast_private** %3, align 8
  store i32 129, i32* %4, align 4
  br label %11

11:                                               ; preds = %19, %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp sle i32 %12, 159
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %16 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ast_set_index_reg(%struct.ast_private* %15, i32 %16, i32 %17, i32 0)
  br label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %11

22:                                               ; preds = %11
  %23 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %24 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AST2300, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %40, label %28

28:                                               ; preds = %22
  %29 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %30 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AST2400, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %36 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AST2500, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %34, %28, %22
  %41 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %42 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 32
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32*, i32** @extreginfo_ast2300, align 8
  store i32* %48, i32** %7, align 8
  br label %51

49:                                               ; preds = %40
  %50 = load i32*, i32** @extreginfo_ast2300a0, align 8
  store i32* %50, i32** %7, align 8
  br label %51

51:                                               ; preds = %49, %47
  br label %54

52:                                               ; preds = %34
  %53 = load i32*, i32** @extreginfo, align 8
  store i32* %53, i32** %7, align 8
  br label %54

54:                                               ; preds = %52, %51
  store i32 160, i32* %5, align 4
  br label %55

55:                                               ; preds = %59, %54
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 255
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %61 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %60, i32 %61, i32 %62, i32 0, i32 %64)
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %7, align 8
  br label %55

70:                                               ; preds = %55
  %71 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %72 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %73 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %71, i32 %72, i32 140, i32 0, i32 1)
  %74 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %75 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %76 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %74, i32 %75, i32 183, i32 0, i32 0)
  store i32 4, i32* %6, align 4
  %77 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %78 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @AST2300, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %94, label %82

82:                                               ; preds = %70
  %83 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %84 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @AST2400, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %90 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @AST2500, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88, %82, %70
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, 32
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %94, %88
  %98 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %99 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %98, i32 %99, i32 182, i32 255, i32 %100)
  ret void
}

declare dso_local i32 @ast_set_index_reg(%struct.ast_private*, i32, i32, i32) #1

declare dso_local i32 @ast_set_index_reg_mask(%struct.ast_private*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
