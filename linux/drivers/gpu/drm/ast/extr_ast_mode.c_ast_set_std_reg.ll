; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_set_std_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_set_std_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ast_private* }
%struct.ast_private = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.ast_vbios_mode_info = type { %struct.ast_vbios_stdtable* }
%struct.ast_vbios_stdtable = type { i32, i32*, i32*, i32*, i32* }

@AST_IO_MISC_PORT_WRITE = common dso_local global i32 0, align 4
@AST_IO_SEQ_PORT = common dso_local global i32 0, align 4
@AST_IO_CRTC_PORT = common dso_local global i32 0, align 4
@AST_IO_INPUT_STATUS1_READ = common dso_local global i32 0, align 4
@AST_IO_AR_PORT_WRITE = common dso_local global i32 0, align 4
@AST_IO_GR_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_display_mode*, %struct.ast_vbios_mode_info*)* @ast_set_std_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ast_set_std_reg(%struct.drm_crtc* %0, %struct.drm_display_mode* %1, %struct.ast_vbios_mode_info* %2) #0 {
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.ast_vbios_mode_info*, align 8
  %7 = alloca %struct.ast_private*, align 8
  %8 = alloca %struct.ast_vbios_stdtable*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.ast_vbios_mode_info* %2, %struct.ast_vbios_mode_info** %6, align 8
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %12 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ast_private*, %struct.ast_private** %14, align 8
  store %struct.ast_private* %15, %struct.ast_private** %7, align 8
  %16 = load %struct.ast_vbios_mode_info*, %struct.ast_vbios_mode_info** %6, align 8
  %17 = getelementptr inbounds %struct.ast_vbios_mode_info, %struct.ast_vbios_mode_info* %16, i32 0, i32 0
  %18 = load %struct.ast_vbios_stdtable*, %struct.ast_vbios_stdtable** %17, align 8
  store %struct.ast_vbios_stdtable* %18, %struct.ast_vbios_stdtable** %8, align 8
  %19 = load %struct.ast_vbios_stdtable*, %struct.ast_vbios_stdtable** %8, align 8
  %20 = getelementptr inbounds %struct.ast_vbios_stdtable, %struct.ast_vbios_stdtable* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  %22 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %23 = load i32, i32* @AST_IO_MISC_PORT_WRITE, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @ast_io_write8(%struct.ast_private* %22, i32 %23, i32 %24)
  %26 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %27 = load i32, i32* @AST_IO_SEQ_PORT, align 4
  %28 = call i32 @ast_set_index_reg(%struct.ast_private* %26, i32 %27, i32 0, i32 3)
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %52, %3
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %55

32:                                               ; preds = %29
  %33 = load %struct.ast_vbios_stdtable*, %struct.ast_vbios_stdtable** %8, align 8
  %34 = getelementptr inbounds %struct.ast_vbios_stdtable, %struct.ast_vbios_stdtable* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %43, 32
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %42, %32
  %46 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %47 = load i32, i32* @AST_IO_SEQ_PORT, align 4
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @ast_set_index_reg(%struct.ast_private* %46, i32 %47, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %29

55:                                               ; preds = %29
  %56 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %57 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %58 = call i32 @ast_set_index_reg_mask(%struct.ast_private* %56, i32 %57, i32 17, i32 127, i32 0)
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %74, %55
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 25
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %64 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.ast_vbios_stdtable*, %struct.ast_vbios_stdtable** %8, align 8
  %67 = getelementptr inbounds %struct.ast_vbios_stdtable, %struct.ast_vbios_stdtable* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ast_set_index_reg(%struct.ast_private* %63, i32 %64, i32 %65, i32 %72)
  br label %74

74:                                               ; preds = %62
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %59

77:                                               ; preds = %59
  %78 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %79 = load i32, i32* @AST_IO_INPUT_STATUS1_READ, align 4
  %80 = call i32 @ast_io_read8(%struct.ast_private* %78, i32 %79)
  store i32 %80, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %100, %77
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %82, 20
  br i1 %83, label %84, label %103

84:                                               ; preds = %81
  %85 = load %struct.ast_vbios_stdtable*, %struct.ast_vbios_stdtable** %8, align 8
  %86 = getelementptr inbounds %struct.ast_vbios_stdtable, %struct.ast_vbios_stdtable* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %10, align 4
  %92 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %93 = load i32, i32* @AST_IO_AR_PORT_WRITE, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @ast_io_write8(%struct.ast_private* %92, i32 %93, i32 %94)
  %96 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %97 = load i32, i32* @AST_IO_AR_PORT_WRITE, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @ast_io_write8(%struct.ast_private* %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %84
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %81

103:                                              ; preds = %81
  %104 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %105 = load i32, i32* @AST_IO_AR_PORT_WRITE, align 4
  %106 = call i32 @ast_io_write8(%struct.ast_private* %104, i32 %105, i32 20)
  %107 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %108 = load i32, i32* @AST_IO_AR_PORT_WRITE, align 4
  %109 = call i32 @ast_io_write8(%struct.ast_private* %107, i32 %108, i32 0)
  %110 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %111 = load i32, i32* @AST_IO_INPUT_STATUS1_READ, align 4
  %112 = call i32 @ast_io_read8(%struct.ast_private* %110, i32 %111)
  store i32 %112, i32* %10, align 4
  %113 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %114 = load i32, i32* @AST_IO_AR_PORT_WRITE, align 4
  %115 = call i32 @ast_io_write8(%struct.ast_private* %113, i32 %114, i32 32)
  store i32 0, i32* %9, align 4
  br label %116

116:                                              ; preds = %131, %103
  %117 = load i32, i32* %9, align 4
  %118 = icmp slt i32 %117, 9
  br i1 %118, label %119, label %134

119:                                              ; preds = %116
  %120 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  %121 = load i32, i32* @AST_IO_GR_PORT, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.ast_vbios_stdtable*, %struct.ast_vbios_stdtable** %8, align 8
  %124 = getelementptr inbounds %struct.ast_vbios_stdtable, %struct.ast_vbios_stdtable* %123, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @ast_set_index_reg(%struct.ast_private* %120, i32 %121, i32 %122, i32 %129)
  br label %131

131:                                              ; preds = %119
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %116

134:                                              ; preds = %116
  ret void
}

declare dso_local i32 @ast_io_write8(%struct.ast_private*, i32, i32) #1

declare dso_local i32 @ast_set_index_reg(%struct.ast_private*, i32, i32, i32) #1

declare dso_local i32 @ast_set_index_reg_mask(%struct.ast_private*, i32, i32, i32, i32) #1

declare dso_local i32 @ast_io_read8(%struct.ast_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
