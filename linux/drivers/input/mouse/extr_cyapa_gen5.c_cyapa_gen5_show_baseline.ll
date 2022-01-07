; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_gen5_show_baseline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_gen5_show_baseline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.cyapa = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@GEN5_CMD_RETRIEVE_PANEL_SCAN = common dso_local global i32 0, align 4
@GEN5_PANEL_SCAN_MUTUAL_RAW_DATA = common dso_local global i32 0, align 4
@GEN5_PANEL_SCAN_SELF_RAW_DATA = common dso_local global i32 0, align 4
@GEN5_PANEL_SCAN_MUTUAL_DIFFCOUNT = common dso_local global i32 0, align 4
@GEN5_PANEL_SCAN_SELF_DIFFCOUNT = common dso_local global i32 0, align 4
@GEN5_PANEL_SCAN_MUTUAL_BASELINE = common dso_local global i32 0, align 4
@GEN5_PANEL_SCAN_SELF_BASELINE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"%d %d %d %d %d %d %d %d %d %d %d \00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @cyapa_gen5_show_baseline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_gen5_show_baseline(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cyapa*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = call %struct.cyapa* @dev_get_drvdata(%struct.device* %41)
  store %struct.cyapa* %42, %struct.cyapa** %8, align 8
  %43 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %44 = call i32 @cyapa_is_pip_app_mode(%struct.cyapa* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %3
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %227

49:                                               ; preds = %3
  %50 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %51 = call i32 @cyapa_pip_suspend_scanning(%struct.cyapa* %50)
  store i32 %51, i32* %38, align 4
  %52 = load i32, i32* %38, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %38, align 4
  store i32 %55, i32* %4, align 4
  br label %227

56:                                               ; preds = %49
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  %57 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %58 = call i32 @cyapa_gen5_read_mutual_idac_data(%struct.cyapa* %57, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14)
  store i32 %58, i32* %38, align 4
  %59 = load i32, i32* %38, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %165

62:                                               ; preds = %56
  %63 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %64 = call i32 @cyapa_gen5_read_self_idac_data(%struct.cyapa* %63, i32* %15, i32* %16, i32* %17, i32* %18, i32* %19)
  store i32 %64, i32* %38, align 4
  %65 = load i32, i32* %38, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %165

68:                                               ; preds = %62
  %69 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %70 = call i32 @cyapa_gen5_execute_panel_scan(%struct.cyapa* %69)
  store i32 %70, i32* %38, align 4
  %71 = load i32, i32* %38, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %165

74:                                               ; preds = %68
  %75 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %76 = load i32, i32* @GEN5_CMD_RETRIEVE_PANEL_SCAN, align 4
  %77 = load i32, i32* @GEN5_PANEL_SCAN_MUTUAL_RAW_DATA, align 4
  %78 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %79 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %82 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %80, %83
  %85 = call i32 @cyapa_gen5_read_panel_scan_raw_data(%struct.cyapa* %75, i32 %76, i32 %77, i32 %84, i32* %20, i32* %21, i32* %22, i32* null)
  store i32 %85, i32* %38, align 4
  %86 = load i32, i32* %38, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %74
  br label %165

89:                                               ; preds = %74
  %90 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %91 = load i32, i32* @GEN5_CMD_RETRIEVE_PANEL_SCAN, align 4
  %92 = load i32, i32* @GEN5_PANEL_SCAN_SELF_RAW_DATA, align 4
  %93 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %94 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %97 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %95, %98
  %100 = call i32 @cyapa_gen5_read_panel_scan_raw_data(%struct.cyapa* %90, i32 %91, i32 %92, i32 %99, i32* %23, i32* %24, i32* %25, i32* null)
  store i32 %100, i32* %38, align 4
  %101 = load i32, i32* %38, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %89
  br label %165

104:                                              ; preds = %89
  %105 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %106 = load i32, i32* @GEN5_CMD_RETRIEVE_PANEL_SCAN, align 4
  %107 = load i32, i32* @GEN5_PANEL_SCAN_MUTUAL_DIFFCOUNT, align 4
  %108 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %109 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %112 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %110, %113
  %115 = call i32 @cyapa_gen5_read_panel_scan_raw_data(%struct.cyapa* %105, i32 %106, i32 %107, i32 %114, i32* %26, i32* %27, i32* %28, i32* null)
  store i32 %115, i32* %38, align 4
  %116 = load i32, i32* %38, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %104
  br label %165

119:                                              ; preds = %104
  %120 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %121 = load i32, i32* @GEN5_CMD_RETRIEVE_PANEL_SCAN, align 4
  %122 = load i32, i32* @GEN5_PANEL_SCAN_SELF_DIFFCOUNT, align 4
  %123 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %124 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %127 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %125, %128
  %130 = call i32 @cyapa_gen5_read_panel_scan_raw_data(%struct.cyapa* %120, i32 %121, i32 %122, i32 %129, i32* %29, i32* %30, i32* %31, i32* null)
  store i32 %130, i32* %38, align 4
  %131 = load i32, i32* %38, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %119
  br label %165

134:                                              ; preds = %119
  %135 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %136 = load i32, i32* @GEN5_CMD_RETRIEVE_PANEL_SCAN, align 4
  %137 = load i32, i32* @GEN5_PANEL_SCAN_MUTUAL_BASELINE, align 4
  %138 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %139 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %142 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = mul nsw i32 %140, %143
  %145 = call i32 @cyapa_gen5_read_panel_scan_raw_data(%struct.cyapa* %135, i32 %136, i32 %137, i32 %144, i32* %32, i32* %33, i32* %34, i32* null)
  store i32 %145, i32* %38, align 4
  %146 = load i32, i32* %38, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %134
  br label %165

149:                                              ; preds = %134
  %150 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %151 = load i32, i32* @GEN5_CMD_RETRIEVE_PANEL_SCAN, align 4
  %152 = load i32, i32* @GEN5_PANEL_SCAN_SELF_BASELINE, align 4
  %153 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %154 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %157 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %155, %158
  %160 = call i32 @cyapa_gen5_read_panel_scan_raw_data(%struct.cyapa* %150, i32 %151, i32 %152, i32 %159, i32* %35, i32* %36, i32* %37, i32* null)
  store i32 %160, i32* %38, align 4
  %161 = load i32, i32* %38, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %149
  br label %165

164:                                              ; preds = %149
  br label %165

165:                                              ; preds = %164, %163, %148, %133, %118, %103, %88, %73, %67, %61
  %166 = load %struct.cyapa*, %struct.cyapa** %8, align 8
  %167 = call i32 @cyapa_pip_resume_scanning(%struct.cyapa* %166)
  store i32 %167, i32* %39, align 4
  %168 = load i32, i32* %39, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %165
  %171 = load i32, i32* %38, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %170, %165
  %174 = load i32, i32* %39, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  %177 = load i32, i32* %39, align 4
  br label %180

178:                                              ; preds = %173
  %179 = load i32, i32* %38, align 4
  br label %180

180:                                              ; preds = %178, %176
  %181 = phi i32 [ %177, %176 ], [ %179, %178 ]
  store i32 %181, i32* %4, align 4
  br label %227

182:                                              ; preds = %170
  %183 = load i8*, i8** %7, align 8
  %184 = load i64, i64* @PAGE_SIZE, align 8
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* %15, align 4
  %192 = load i32, i32* %16, align 4
  %193 = load i32, i32* %18, align 4
  %194 = load i32, i32* %17, align 4
  %195 = load i32, i32* %19, align 4
  %196 = call i32 (i8*, i64, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...) @scnprintf(i8* %183, i64 %184, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %185, i32 %186, i32 %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195)
  store i32 %196, i32* %40, align 4
  %197 = load i8*, i8** %7, align 8
  %198 = load i32, i32* %40, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  %201 = load i64, i64* @PAGE_SIZE, align 8
  %202 = load i32, i32* %40, align 4
  %203 = sext i32 %202 to i64
  %204 = sub nsw i64 %201, %203
  %205 = load i32, i32* %21, align 4
  %206 = load i32, i32* %20, align 4
  %207 = load i32, i32* %22, align 4
  %208 = load i32, i32* %24, align 4
  %209 = load i32, i32* %23, align 4
  %210 = load i32, i32* %25, align 4
  %211 = load i32, i32* %27, align 4
  %212 = load i32, i32* %26, align 4
  %213 = load i32, i32* %28, align 4
  %214 = load i32, i32* %30, align 4
  %215 = load i32, i32* %29, align 4
  %216 = load i32, i32* %31, align 4
  %217 = load i32, i32* %33, align 4
  %218 = load i32, i32* %32, align 4
  %219 = load i32, i32* %34, align 4
  %220 = load i32, i32* %36, align 4
  %221 = load i32, i32* %35, align 4
  %222 = load i32, i32* %37, align 4
  %223 = call i32 (i8*, i64, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...) @scnprintf(i8* %200, i64 %204, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 %210, i32 %211, i32 %212, i32 %213, i32 %214, i32 %215, i32 %216, i32 %217, i32 %218, i32 %219, i32 %220, i32 %221, i32 %222)
  %224 = load i32, i32* %40, align 4
  %225 = add nsw i32 %224, %223
  store i32 %225, i32* %40, align 4
  %226 = load i32, i32* %40, align 4
  store i32 %226, i32* %4, align 4
  br label %227

227:                                              ; preds = %182, %180, %54, %46
  %228 = load i32, i32* %4, align 4
  ret i32 %228
}

declare dso_local %struct.cyapa* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @cyapa_is_pip_app_mode(%struct.cyapa*) #1

declare dso_local i32 @cyapa_pip_suspend_scanning(%struct.cyapa*) #1

declare dso_local i32 @cyapa_gen5_read_mutual_idac_data(%struct.cyapa*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @cyapa_gen5_read_self_idac_data(%struct.cyapa*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @cyapa_gen5_execute_panel_scan(%struct.cyapa*) #1

declare dso_local i32 @cyapa_gen5_read_panel_scan_raw_data(%struct.cyapa*, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @cyapa_pip_resume_scanning(%struct.cyapa*) #1

declare dso_local i32 @scnprintf(i8*, i64, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
