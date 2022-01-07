; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_report_eu_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_report_eu_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.talitos_private = type { %struct.TYPE_2__*, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@TALITOS_DESCBUF = common dso_local global i64 0, align 8
@DESC_HDR_SEL0_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"AFEUISR 0x%08x_%08x\0A\00", align 1
@TALITOS_EUISR = common dso_local global i64 0, align 8
@TALITOS_EUISR_LO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"DEUISR 0x%08x_%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"MDEUISR 0x%08x_%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"RNGUISR 0x%08x_%08x\0A\00", align 1
@TALITOS_ISR = common dso_local global i64 0, align 8
@TALITOS_ISR_LO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"PKEUISR 0x%08x_%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"AESUISR 0x%08x_%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"CRCUISR 0x%08x_%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"KEUISR 0x%08x_%08x\0A\00", align 1
@DESC_HDR_SEL1_MASK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"DESCBUF 0x%08x_%08x\0A\00", align 1
@TALITOS_DESCBUF_LO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32, i32)* @report_eu_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_eu_error(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.talitos_private*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %9)
  store %struct.talitos_private* %10, %struct.talitos_private** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %3
  %14 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %15 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TALITOS_DESCBUF, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @in_be32(i64 %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %13, %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @DESC_HDR_SEL0_MASK, align 4
  %28 = and i32 %26, %27
  switch i32 %28, label %149 [
    i32 138, label %29
    i32 136, label %44
    i32 134, label %59
    i32 133, label %59
    i32 131, label %74
    i32 132, label %89
    i32 139, label %104
    i32 137, label %119
    i32 135, label %134
  ]

29:                                               ; preds = %25
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %32 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %31, i32 0, i32 7
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TALITOS_EUISR, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @in_be32(i64 %35)
  %37 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %38 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TALITOS_EUISR_LO, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @in_be32(i64 %41)
  %43 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %42)
  br label %149

44:                                               ; preds = %25
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %47 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TALITOS_EUISR, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @in_be32(i64 %50)
  %52 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %53 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TALITOS_EUISR_LO, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @in_be32(i64 %56)
  %58 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %57)
  br label %149

59:                                               ; preds = %25, %25
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %62 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TALITOS_EUISR, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @in_be32(i64 %65)
  %67 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %68 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TALITOS_EUISR_LO, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @in_be32(i64 %71)
  %73 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %72)
  br label %149

74:                                               ; preds = %25
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %77 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @TALITOS_ISR, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @in_be32(i64 %80)
  %82 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %83 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @TALITOS_ISR_LO, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @in_be32(i64 %86)
  %88 = call i32 @dev_err(%struct.device* %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %87)
  br label %149

89:                                               ; preds = %25
  %90 = load %struct.device*, %struct.device** %4, align 8
  %91 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %92 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @TALITOS_EUISR, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @in_be32(i64 %95)
  %97 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %98 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @TALITOS_EUISR_LO, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @in_be32(i64 %101)
  %103 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %96, i32 %102)
  br label %149

104:                                              ; preds = %25
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %107 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @TALITOS_EUISR, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @in_be32(i64 %110)
  %112 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %113 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @TALITOS_EUISR_LO, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @in_be32(i64 %116)
  %118 = call i32 @dev_err(%struct.device* %105, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %111, i32 %117)
  br label %149

119:                                              ; preds = %25
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %122 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @TALITOS_EUISR, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @in_be32(i64 %125)
  %127 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %128 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @TALITOS_EUISR_LO, align 8
  %131 = add nsw i64 %129, %130
  %132 = call i32 @in_be32(i64 %131)
  %133 = call i32 @dev_err(%struct.device* %120, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %126, i32 %132)
  br label %149

134:                                              ; preds = %25
  %135 = load %struct.device*, %struct.device** %4, align 8
  %136 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %137 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @TALITOS_EUISR, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @in_be32(i64 %140)
  %142 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %143 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @TALITOS_EUISR_LO, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @in_be32(i64 %146)
  %148 = call i32 @dev_err(%struct.device* %135, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %141, i32 %147)
  br label %149

149:                                              ; preds = %25, %134, %119, %104, %89, %74, %59, %44, %29
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @DESC_HDR_SEL1_MASK, align 4
  %152 = and i32 %150, %151
  switch i32 %152, label %183 [
    i32 129, label %153
    i32 128, label %153
    i32 130, label %168
  ]

153:                                              ; preds = %149, %149
  %154 = load %struct.device*, %struct.device** %4, align 8
  %155 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %156 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @TALITOS_EUISR, align 8
  %159 = add nsw i64 %157, %158
  %160 = call i32 @in_be32(i64 %159)
  %161 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %162 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @TALITOS_EUISR_LO, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 @in_be32(i64 %165)
  %167 = call i32 @dev_err(%struct.device* %154, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %160, i32 %166)
  br label %183

168:                                              ; preds = %149
  %169 = load %struct.device*, %struct.device** %4, align 8
  %170 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %171 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @TALITOS_EUISR, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @in_be32(i64 %174)
  %176 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %177 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @TALITOS_EUISR_LO, align 8
  %180 = add nsw i64 %178, %179
  %181 = call i32 @in_be32(i64 %180)
  %182 = call i32 @dev_err(%struct.device* %169, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %175, i32 %181)
  br label %183

183:                                              ; preds = %149, %168, %153
  store i32 0, i32* %8, align 4
  br label %184

184:                                              ; preds = %220, %183
  %185 = load i32, i32* %8, align 4
  %186 = icmp slt i32 %185, 8
  br i1 %186, label %187, label %223

187:                                              ; preds = %184
  %188 = load %struct.device*, %struct.device** %4, align 8
  %189 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %190 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %189, i32 0, i32 0
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** %190, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @TALITOS_DESCBUF, align 8
  %198 = add nsw i64 %196, %197
  %199 = load i32, i32* %8, align 4
  %200 = mul nsw i32 8, %199
  %201 = sext i32 %200 to i64
  %202 = add nsw i64 %198, %201
  %203 = call i32 @in_be32(i64 %202)
  %204 = load %struct.talitos_private*, %struct.talitos_private** %7, align 8
  %205 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %204, i32 0, i32 0
  %206 = load %struct.TYPE_2__*, %struct.TYPE_2__** %205, align 8
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @TALITOS_DESCBUF_LO, align 8
  %213 = add nsw i64 %211, %212
  %214 = load i32, i32* %8, align 4
  %215 = mul nsw i32 8, %214
  %216 = sext i32 %215 to i64
  %217 = add nsw i64 %213, %216
  %218 = call i32 @in_be32(i64 %217)
  %219 = call i32 @dev_err(%struct.device* %188, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %203, i32 %218)
  br label %220

220:                                              ; preds = %187
  %221 = load i32, i32* %8, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %8, align 4
  br label %184

223:                                              ; preds = %184
  ret void
}

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @in_be32(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
