; ModuleID = '/home/carl/AnghaBench/linux/drivers/interconnect/qcom/extr_sdm845.c_qcom_icc_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/interconnect/qcom/extr_sdm845.c_qcom_icc_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icc_node = type { i32 }
%struct.qcom_icc_provider = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64*, i64*, i32, i64 }
%struct.list_head = type { i32 }
%struct.tcs_cmd = type { i32 }

@SDM845_MAX_BCMS = common dso_local global i32 0, align 4
@SDM845_MAX_VCD = common dso_local global i32 0, align 4
@QCOM_ICC_BUCKET_AMC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Error invalidating RPMH client (%d)\0A\00", align 1
@RPMH_ACTIVE_ONLY_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Error sending AMC RPMH requests (%d)\0A\00", align 1
@QCOM_ICC_BUCKET_WAKE = common dso_local global i64 0, align 8
@QCOM_ICC_BUCKET_SLEEP = common dso_local global i64 0, align 8
@RPMH_WAKE_ONLY_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Error sending WAKE RPMH requests (%d)\0A\00", align 1
@RPMH_SLEEP_STATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Error sending SLEEP RPMH requests (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icc_node*, %struct.icc_node*)* @qcom_icc_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_icc_set(%struct.icc_node* %0, %struct.icc_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.icc_node*, align 8
  %5 = alloca %struct.icc_node*, align 8
  %6 = alloca %struct.qcom_icc_provider*, align 8
  %7 = alloca %struct.icc_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.list_head, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.icc_node* %0, %struct.icc_node** %4, align 8
  store %struct.icc_node* %1, %struct.icc_node** %5, align 8
  %15 = load i32, i32* @SDM845_MAX_BCMS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca %struct.tcs_cmd, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @SDM845_MAX_VCD, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %22 = load %struct.icc_node*, %struct.icc_node** %4, align 8
  %23 = icmp ne %struct.icc_node* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load %struct.icc_node*, %struct.icc_node** %5, align 8
  store %struct.icc_node* %25, %struct.icc_node** %7, align 8
  br label %28

26:                                               ; preds = %2
  %27 = load %struct.icc_node*, %struct.icc_node** %4, align 8
  store %struct.icc_node* %27, %struct.icc_node** %7, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = load %struct.icc_node*, %struct.icc_node** %7, align 8
  %30 = getelementptr inbounds %struct.icc_node, %struct.icc_node* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.qcom_icc_provider* @to_qcom_provider(i32 %31)
  store %struct.qcom_icc_provider* %32, %struct.qcom_icc_provider** %6, align 8
  %33 = call i32 @INIT_LIST_HEAD(%struct.list_head* %10)
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %70, %28
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.qcom_icc_provider*, %struct.qcom_icc_provider** %6, align 8
  %37 = getelementptr inbounds %struct.qcom_icc_provider, %struct.qcom_icc_provider* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %73

40:                                               ; preds = %34
  %41 = load %struct.qcom_icc_provider*, %struct.qcom_icc_provider** %6, align 8
  %42 = getelementptr inbounds %struct.qcom_icc_provider, %struct.qcom_icc_provider* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %43, i64 %45
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %40
  %52 = load %struct.qcom_icc_provider*, %struct.qcom_icc_provider** %6, align 8
  %53 = getelementptr inbounds %struct.qcom_icc_provider, %struct.qcom_icc_provider* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %53, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %54, i64 %56
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = call i32 @bcm_aggregate(%struct.TYPE_2__* %58)
  %60 = load %struct.qcom_icc_provider*, %struct.qcom_icc_provider** %6, align 8
  %61 = getelementptr inbounds %struct.qcom_icc_provider, %struct.qcom_icc_provider* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %62, i64 %64
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = call i32 @list_add_tail(i32* %67, %struct.list_head* %10)
  br label %69

69:                                               ; preds = %51, %40
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %34

73:                                               ; preds = %34
  %74 = load i64, i64* @QCOM_ICC_BUCKET_AMC, align 8
  %75 = call i32 @tcs_list_gen(%struct.list_head* %10, i64 %74, %struct.tcs_cmd* %18, i32* %21)
  %76 = getelementptr inbounds i32, i32* %21, i64 0
  %77 = load i32, i32* %76, align 16
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %213

81:                                               ; preds = %73
  %82 = load %struct.qcom_icc_provider*, %struct.qcom_icc_provider** %6, align 8
  %83 = getelementptr inbounds %struct.qcom_icc_provider, %struct.qcom_icc_provider* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @rpmh_invalidate(i32 %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %213

92:                                               ; preds = %81
  %93 = load %struct.qcom_icc_provider*, %struct.qcom_icc_provider** %6, align 8
  %94 = getelementptr inbounds %struct.qcom_icc_provider, %struct.qcom_icc_provider* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @RPMH_ACTIVE_ONLY_STATE, align 4
  %97 = call i32 @rpmh_write_batch(i32 %95, i32 %96, %struct.tcs_cmd* %18, i32* %21)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %92
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %213

104:                                              ; preds = %92
  %105 = call i32 @INIT_LIST_HEAD(%struct.list_head* %10)
  store i32 0, i32* %13, align 4
  br label %106

106:                                              ; preds = %175, %104
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.qcom_icc_provider*, %struct.qcom_icc_provider** %6, align 8
  %109 = getelementptr inbounds %struct.qcom_icc_provider, %struct.qcom_icc_provider* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %178

112:                                              ; preds = %106
  %113 = load %struct.qcom_icc_provider*, %struct.qcom_icc_provider** %6, align 8
  %114 = getelementptr inbounds %struct.qcom_icc_provider, %struct.qcom_icc_provider* %113, i32 0, i32 2
  %115 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %114, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %115, i64 %117
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = load i64, i64* @QCOM_ICC_BUCKET_WAKE, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.qcom_icc_provider*, %struct.qcom_icc_provider** %6, align 8
  %126 = getelementptr inbounds %struct.qcom_icc_provider, %struct.qcom_icc_provider* %125, i32 0, i32 2
  %127 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %126, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %127, i64 %129
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i64*, i64** %132, align 8
  %134 = load i64, i64* @QCOM_ICC_BUCKET_SLEEP, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %124, %136
  br i1 %137, label %164, label %138

138:                                              ; preds = %112
  %139 = load %struct.qcom_icc_provider*, %struct.qcom_icc_provider** %6, align 8
  %140 = getelementptr inbounds %struct.qcom_icc_provider, %struct.qcom_icc_provider* %139, i32 0, i32 2
  %141 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %140, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %141, i64 %143
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i64*, i64** %146, align 8
  %148 = load i64, i64* @QCOM_ICC_BUCKET_WAKE, align 8
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.qcom_icc_provider*, %struct.qcom_icc_provider** %6, align 8
  %152 = getelementptr inbounds %struct.qcom_icc_provider, %struct.qcom_icc_provider* %151, i32 0, i32 2
  %153 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %152, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %153, i64 %155
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i64*, i64** %158, align 8
  %160 = load i64, i64* @QCOM_ICC_BUCKET_SLEEP, align 8
  %161 = getelementptr inbounds i64, i64* %159, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %150, %162
  br i1 %163, label %164, label %174

164:                                              ; preds = %138, %112
  %165 = load %struct.qcom_icc_provider*, %struct.qcom_icc_provider** %6, align 8
  %166 = getelementptr inbounds %struct.qcom_icc_provider, %struct.qcom_icc_provider* %165, i32 0, i32 2
  %167 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %166, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %167, i64 %169
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 2
  %173 = call i32 @list_add_tail(i32* %172, %struct.list_head* %10)
  br label %174

174:                                              ; preds = %164, %138
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %13, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %13, align 4
  br label %106

178:                                              ; preds = %106
  %179 = call i64 @list_empty(%struct.list_head* %10)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = load i32, i32* %12, align 4
  store i32 %182, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %213

183:                                              ; preds = %178
  %184 = load i64, i64* @QCOM_ICC_BUCKET_WAKE, align 8
  %185 = call i32 @tcs_list_gen(%struct.list_head* %10, i64 %184, %struct.tcs_cmd* %18, i32* %21)
  %186 = load %struct.qcom_icc_provider*, %struct.qcom_icc_provider** %6, align 8
  %187 = getelementptr inbounds %struct.qcom_icc_provider, %struct.qcom_icc_provider* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @RPMH_WAKE_ONLY_STATE, align 4
  %190 = call i32 @rpmh_write_batch(i32 %188, i32 %189, %struct.tcs_cmd* %18, i32* %21)
  store i32 %190, i32* %12, align 4
  %191 = load i32, i32* %12, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %183
  %194 = load i32, i32* %12, align 4
  %195 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %194)
  %196 = load i32, i32* %12, align 4
  store i32 %196, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %213

197:                                              ; preds = %183
  %198 = load i64, i64* @QCOM_ICC_BUCKET_SLEEP, align 8
  %199 = call i32 @tcs_list_gen(%struct.list_head* %10, i64 %198, %struct.tcs_cmd* %18, i32* %21)
  %200 = load %struct.qcom_icc_provider*, %struct.qcom_icc_provider** %6, align 8
  %201 = getelementptr inbounds %struct.qcom_icc_provider, %struct.qcom_icc_provider* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @RPMH_SLEEP_STATE, align 4
  %204 = call i32 @rpmh_write_batch(i32 %202, i32 %203, %struct.tcs_cmd* %18, i32* %21)
  store i32 %204, i32* %12, align 4
  %205 = load i32, i32* %12, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %197
  %208 = load i32, i32* %12, align 4
  %209 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %208)
  %210 = load i32, i32* %12, align 4
  store i32 %210, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %213

211:                                              ; preds = %197
  %212 = load i32, i32* %12, align 4
  store i32 %212, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %213

213:                                              ; preds = %211, %207, %193, %181, %100, %88, %79
  %214 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %214)
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.qcom_icc_provider* @to_qcom_provider(i32) #2

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #2

declare dso_local i32 @bcm_aggregate(%struct.TYPE_2__*) #2

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #2

declare dso_local i32 @tcs_list_gen(%struct.list_head*, i64, %struct.tcs_cmd*, i32*) #2

declare dso_local i32 @rpmh_invalidate(i32) #2

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local i32 @rpmh_write_batch(i32, i32, %struct.tcs_cmd*, i32*) #2

declare dso_local i64 @list_empty(%struct.list_head*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
