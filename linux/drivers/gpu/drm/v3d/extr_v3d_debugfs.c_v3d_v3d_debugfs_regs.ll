; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_debugfs.c_v3d_v3d_debugfs_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_debugfs.c_v3d_v3d_debugfs_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.seq_file = type { i64 }
%struct.drm_info_node = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.v3d_dev = type { i32, i32 }

@v3d_hub_reg_defs = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"%s (0x%04x): 0x%08x\0A\00", align 1
@v3d_gca_reg_defs = common dso_local global %struct.TYPE_8__* null, align 8
@v3d_core_reg_defs = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"core %d %s (0x%04x): 0x%08x\0A\00", align 1
@v3d_csd_reg_defs = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @v3d_v3d_debugfs_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v3d_v3d_debugfs_regs(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_info_node*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.v3d_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.drm_info_node*
  store %struct.drm_info_node* %13, %struct.drm_info_node** %5, align 8
  %14 = load %struct.drm_info_node*, %struct.drm_info_node** %5, align 8
  %15 = getelementptr inbounds %struct.drm_info_node, %struct.drm_info_node* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %6, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %20 = call %struct.v3d_dev* @to_v3d_dev(%struct.drm_device* %19)
  store %struct.v3d_dev* %20, %struct.v3d_dev** %7, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %48, %2
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @v3d_hub_reg_defs, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %21
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @v3d_hub_reg_defs, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @v3d_hub_reg_defs, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @v3d_hub_reg_defs, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @V3D_READ(i32 %45)
  %47 = call i32 (%struct.seq_file*, i8*, i32, i32, i32, ...) @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %39, i32 %46)
  br label %48

48:                                               ; preds = %26
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %21

51:                                               ; preds = %21
  %52 = load %struct.v3d_dev*, %struct.v3d_dev** %7, align 8
  %53 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 41
  br i1 %55, label %56, label %88

56:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %84, %56
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** @v3d_gca_reg_defs, align 8
  %60 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %59)
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %87

62:                                               ; preds = %57
  %63 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** @v3d_gca_reg_defs, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** @v3d_gca_reg_defs, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** @v3d_gca_reg_defs, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @V3D_GCA_READ(i32 %81)
  %83 = call i32 (%struct.seq_file*, i8*, i32, i32, i32, ...) @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %75, i32 %82)
  br label %84

84:                                               ; preds = %62
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %57

87:                                               ; preds = %57
  br label %88

88:                                               ; preds = %87, %51
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %167, %88
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.v3d_dev*, %struct.v3d_dev** %7, align 8
  %92 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %170

95:                                               ; preds = %89
  store i32 0, i32* %8, align 4
  br label %96

96:                                               ; preds = %125, %95
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** @v3d_core_reg_defs, align 8
  %99 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %98)
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %128

101:                                              ; preds = %96
  %102 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** @v3d_core_reg_defs, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** @v3d_core_reg_defs, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** @v3d_core_reg_defs, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @V3D_CORE_READ(i32 %116, i32 %122)
  %124 = call i32 (%struct.seq_file*, i8*, i32, i32, i32, ...) @seq_printf(%struct.seq_file* %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %109, i32 %115, i32 %123)
  br label %125

125:                                              ; preds = %101
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  br label %96

128:                                              ; preds = %96
  %129 = load %struct.v3d_dev*, %struct.v3d_dev** %7, align 8
  %130 = call i64 @v3d_has_csd(%struct.v3d_dev* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %166

132:                                              ; preds = %128
  store i32 0, i32* %8, align 4
  br label %133

133:                                              ; preds = %162, %132
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** @v3d_csd_reg_defs, align 8
  %136 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %135)
  %137 = icmp slt i32 %134, %136
  br i1 %137, label %138, label %165

138:                                              ; preds = %133
  %139 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** @v3d_csd_reg_defs, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** @v3d_csd_reg_defs, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** @v3d_csd_reg_defs, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @V3D_CORE_READ(i32 %153, i32 %159)
  %161 = call i32 (%struct.seq_file*, i8*, i32, i32, i32, ...) @seq_printf(%struct.seq_file* %139, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %140, i32 %146, i32 %152, i32 %160)
  br label %162

162:                                              ; preds = %138
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %8, align 4
  br label %133

165:                                              ; preds = %133
  br label %166

166:                                              ; preds = %165, %128
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %9, align 4
  br label %89

170:                                              ; preds = %89
  ret i32 0
}

declare dso_local %struct.v3d_dev* @to_v3d_dev(%struct.drm_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @V3D_READ(i32) #1

declare dso_local i32 @V3D_GCA_READ(i32) #1

declare dso_local i32 @V3D_CORE_READ(i32, i32) #1

declare dso_local i64 @v3d_has_csd(%struct.v3d_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
