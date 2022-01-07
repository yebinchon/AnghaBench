; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_bcm-keypad.c_bcm_kp_matrix_key_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_bcm-keypad.c_bcm_kp_matrix_key_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_kp = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@KPCR_STATUSFILTERENABLE = common dso_local global i32 0, align 4
@KPCR_COLFILTERENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to parse kp params\0A\00", align 1
@KPCR_ROWWIDTH_SHIFT = common dso_local global i32 0, align 4
@KPCR_COLUMNWIDTH_SHIFT = common dso_local global i32 0, align 4
@MAX_COLS = common dso_local global i32 0, align 4
@KPEMR_EDGETYPE_BOTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"status-debounce-filter-period\00", align 1
@KPCR_STATUSFILTERTYPE_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Invalid Status filter debounce value %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KPCR_STATUSFILTERTYPE_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"col-debounce-filter-period\00", align 1
@KPCR_COLFILTERTYPE_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Invalid Column filter debounce value %d\0A\00", align 1
@KPCR_COLFILTERTYPE_SHIFT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"row-output-enabled\00", align 1
@KPIOR_ROWOCONTRL_SHIFT = common dso_local global i32 0, align 4
@KPIOR_COLUMNOCONTRL_SHIFT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"pull-up-enabled\00", align 1
@KPCR_MODE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"n_rows=%d n_col=%d kpcr=%x kpior=%x kpemr=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_kp*)* @bcm_kp_matrix_key_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_kp_matrix_key_parse_dt(%struct.bcm_kp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm_kp*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bcm_kp* %0, %struct.bcm_kp** %3, align 8
  %12 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %13 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %12, i32 0, i32 7
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %4, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  store %struct.device_node* %20, %struct.device_node** %5, align 8
  %21 = load i32, i32* @KPCR_STATUSFILTERENABLE, align 4
  %22 = load i32, i32* @KPCR_COLFILTERENABLE, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %25 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %28 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %27, i32 0, i32 1
  %29 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %30 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %29, i32 0, i32 2
  %31 = call i32 @matrix_keypad_parse_properties(%struct.device* %26, i32* %28, i32* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %221

38:                                               ; preds = %1
  %39 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %40 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub i32 %41, 1
  %43 = load i32, i32* @KPCR_ROWWIDTH_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %46 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %50 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  %53 = load i32, i32* @KPCR_COLUMNWIDTH_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %56 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %60 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 1, %61
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  %64 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %65 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %69 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  store i32 1, i32* %11, align 4
  br label %70

70:                                               ; preds = %80, %38
  %71 = load i32, i32* %9, align 4
  %72 = add i32 %71, -1
  store i32 %72, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* %11, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %11, align 4
  %77 = icmp ult i32 %75, 4
  br label %78

78:                                               ; preds = %74, %70
  %79 = phi i1 [ false, %70 ], [ %77, %74 ]
  br i1 %79, label %80, label %90

80:                                               ; preds = %78
  %81 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %82 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @MAX_COLS, align 4
  %85 = shl i32 %83, %84
  %86 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %87 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %70

90:                                               ; preds = %78
  %91 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %92 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %91, i32 0, i32 4
  store i32 0, i32* %92, align 8
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %90
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %98 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %103, %95
  %100 = load i32, i32* %9, align 4
  %101 = add i32 %100, -1
  store i32 %101, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %99
  %104 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %105 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @MAX_COLS, align 4
  %108 = shl i32 %106, %107
  %109 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %110 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %99

113:                                              ; preds = %99
  br label %114

114:                                              ; preds = %113, %90
  %115 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %116 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %115, i32 0, i32 5
  store i32 0, i32* %116, align 4
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %128, %114
  %118 = load i32, i32* %8, align 4
  %119 = icmp ule i32 %118, 30
  br i1 %119, label %120, label %131

120:                                              ; preds = %117
  %121 = load i32, i32* @KPEMR_EDGETYPE_BOTH, align 4
  %122 = load i32, i32* %8, align 4
  %123 = shl i32 %121, %122
  %124 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %125 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %120
  %129 = load i32, i32* %8, align 4
  %130 = add i32 %129, 2
  store i32 %130, i32* %8, align 4
  br label %117

131:                                              ; preds = %117
  %132 = load %struct.device_node*, %struct.device_node** %5, align 8
  %133 = call i32 @of_property_read_u32(%struct.device_node* %132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @KPCR_STATUSFILTERTYPE_MAX, align 4
  %136 = icmp ugt i32 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %131
  %138 = load %struct.device*, %struct.device** %4, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %138, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %2, align 4
  br label %221

143:                                              ; preds = %131
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @KPCR_STATUSFILTERTYPE_SHIFT, align 4
  %146 = shl i32 %144, %145
  %147 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %148 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load %struct.device_node*, %struct.device_node** %5, align 8
  %152 = call i32 @of_property_read_u32(%struct.device_node* %151, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32* %7)
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @KPCR_COLFILTERTYPE_MAX, align 4
  %155 = icmp ugt i32 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %143
  %157 = load %struct.device*, %struct.device** %4, align 8
  %158 = load i32, i32* %7, align 4
  %159 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %157, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %2, align 4
  br label %221

162:                                              ; preds = %143
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* @KPCR_COLFILTERTYPE_SHIFT, align 4
  %165 = shl i32 %163, %164
  %166 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %167 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 8
  %170 = load %struct.device_node*, %struct.device_node** %5, align 8
  %171 = call i64 @of_property_read_bool(%struct.device_node* %170, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %162
  %174 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %175 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = shl i32 1, %176
  %178 = sub nsw i32 %177, 1
  %179 = load i32, i32* @KPIOR_ROWOCONTRL_SHIFT, align 4
  %180 = shl i32 %178, %179
  %181 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %182 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %181, i32 0, i32 6
  store i32 %180, i32* %182, align 8
  br label %193

183:                                              ; preds = %162
  %184 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %185 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = shl i32 1, %186
  %188 = sub nsw i32 %187, 1
  %189 = load i32, i32* @KPIOR_COLUMNOCONTRL_SHIFT, align 4
  %190 = shl i32 %188, %189
  %191 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %192 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %191, i32 0, i32 6
  store i32 %190, i32* %192, align 8
  br label %193

193:                                              ; preds = %183, %173
  %194 = load %struct.device_node*, %struct.device_node** %5, align 8
  %195 = call i64 @of_property_read_bool(%struct.device_node* %194, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %193
  %198 = load i32, i32* @KPCR_MODE, align 4
  %199 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %200 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 8
  br label %203

203:                                              ; preds = %197, %193
  %204 = load %struct.device*, %struct.device** %4, align 8
  %205 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %206 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %209 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %212 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %215 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.bcm_kp*, %struct.bcm_kp** %3, align 8
  %218 = getelementptr inbounds %struct.bcm_kp, %struct.bcm_kp* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @dev_dbg(%struct.device* %204, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %207, i32 %210, i32 %213, i32 %216, i32 %219)
  store i32 0, i32* %2, align 4
  br label %221

221:                                              ; preds = %203, %156, %137, %34
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local i32 @matrix_keypad_parse_properties(%struct.device*, i32*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
