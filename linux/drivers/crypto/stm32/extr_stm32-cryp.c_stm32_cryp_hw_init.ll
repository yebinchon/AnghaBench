; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_cryp = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CRYP_IMSCR = common dso_local global i32 0, align 4
@CR_DATA8 = common dso_local global i32 0, align 4
@CR_FFLUSH = common dso_local global i32 0, align 4
@CR_KEY128 = common dso_local global i32 0, align 4
@CR_KEY192 = common dso_local global i32 0, align 4
@CR_KEY256 = common dso_local global i32 0, align 4
@CR_AES_UNKNOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CR_AES_ECB = common dso_local global i32 0, align 4
@CRYP_CR = common dso_local global i32 0, align 4
@CR_AES_KP = common dso_local global i32 0, align 4
@CR_CRYPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Timeout (key preparation)\0A\00", align 1
@CR_DEC_NOT_ENC = common dso_local global i32 0, align 4
@CR_PH_HEADER = common dso_local global i32 0, align 4
@CR_PH_PAYLOAD = common dso_local global i32 0, align 4
@CR_PH_INIT = common dso_local global i32 0, align 4
@FLG_CCM_PADDED_WA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_cryp*)* @stm32_cryp_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_cryp_hw_init(%struct.stm32_cryp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32_cryp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stm32_cryp* %0, %struct.stm32_cryp** %3, align 8
  %7 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %8 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @pm_runtime_get_sync(i32 %9)
  %11 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %12 = load i32, i32* @CRYP_IMSCR, align 4
  %13 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %11, i32 %12, i32 0)
  %14 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %15 = call i32 @stm32_cryp_hw_write_key(%struct.stm32_cryp* %14)
  %16 = load i32, i32* @CR_DATA8, align 4
  %17 = load i32, i32* @CR_FFLUSH, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %20 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %19, i32 0, i32 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %32 [
    i32 136, label %24
    i32 135, label %28
    i32 134, label %33
  ]

24:                                               ; preds = %1
  %25 = load i32, i32* @CR_KEY128, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %37

28:                                               ; preds = %1
  %29 = load i32, i32* @CR_KEY192, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %37

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %1, %32
  %34 = load i32, i32* @CR_KEY256, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %28, %24
  %38 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %39 = call i32 @stm32_cryp_get_hw_mode(%struct.stm32_cryp* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @CR_AES_UNKNOWN, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %163

46:                                               ; preds = %37
  %47 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %48 = call i64 @is_decrypt(%struct.stm32_cryp* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @CR_AES_ECB, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 133
  br i1 %56, label %57, label %77

57:                                               ; preds = %54, %50
  %58 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %59 = load i32, i32* @CRYP_CR, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @CR_AES_KP, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @CR_CRYPEN, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %58, i32 %59, i32 %64)
  %66 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %67 = call i32 @stm32_cryp_wait_busy(%struct.stm32_cryp* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %57
  %71 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %72 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %163

76:                                               ; preds = %57
  br label %77

77:                                               ; preds = %76, %54, %46
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %5, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %82 = call i64 @is_decrypt(%struct.stm32_cryp* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* @CR_DEC_NOT_ENC, align 4
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %84, %77
  %89 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %90 = load i32, i32* @CRYP_CR, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %89, i32 %90, i32 %91)
  %93 = load i32, i32* %6, align 4
  switch i32 %93, label %148 [
    i32 130, label %94
    i32 132, label %94
    i32 129, label %139
    i32 128, label %139
    i32 133, label %139
    i32 131, label %139
  ]

94:                                               ; preds = %88, %88
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %95, 132
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @stm32_cryp_ccm_init(%struct.stm32_cryp* %98, i32 %99)
  store i32 %100, i32* %4, align 4
  br label %105

101:                                              ; preds = %94
  %102 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @stm32_cryp_gcm_init(%struct.stm32_cryp* %102, i32 %103)
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %101, %97
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i32, i32* %4, align 4
  store i32 %109, i32* %2, align 4
  br label %163

110:                                              ; preds = %105
  %111 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %112 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %111, i32 0, i32 2
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load i32, i32* @CR_PH_HEADER, align 4
  %119 = load i32, i32* %5, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %5, align 4
  br label %138

121:                                              ; preds = %110
  %122 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %123 = call i32 @stm32_cryp_get_input_text_len(%struct.stm32_cryp* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %121
  %126 = load i32, i32* @CR_PH_PAYLOAD, align 4
  %127 = load i32, i32* %5, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %5, align 4
  %129 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %130 = load i32, i32* @CRYP_CR, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %129, i32 %130, i32 %131)
  br label %137

133:                                              ; preds = %121
  %134 = load i32, i32* @CR_PH_INIT, align 4
  %135 = load i32, i32* %5, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %133, %125
  br label %138

138:                                              ; preds = %137, %117
  br label %149

139:                                              ; preds = %88, %88, %88, %88
  %140 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %141 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %142 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %141, i32 0, i32 1
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = inttoptr i64 %145 to i32*
  %147 = call i32 @stm32_cryp_hw_write_iv(%struct.stm32_cryp* %140, i32* %146)
  br label %149

148:                                              ; preds = %88
  br label %149

149:                                              ; preds = %148, %139, %138
  %150 = load i32, i32* @CR_CRYPEN, align 4
  %151 = load i32, i32* %5, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %5, align 4
  %153 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %154 = load i32, i32* @CRYP_CR, align 4
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @stm32_cryp_write(%struct.stm32_cryp* %153, i32 %154, i32 %155)
  %157 = load i32, i32* @FLG_CCM_PADDED_WA, align 4
  %158 = xor i32 %157, -1
  %159 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %160 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = and i32 %161, %158
  store i32 %162, i32* %160, align 8
  store i32 0, i32* %2, align 4
  br label %163

163:                                              ; preds = %149, %108, %70, %43
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @stm32_cryp_write(%struct.stm32_cryp*, i32, i32) #1

declare dso_local i32 @stm32_cryp_hw_write_key(%struct.stm32_cryp*) #1

declare dso_local i32 @stm32_cryp_get_hw_mode(%struct.stm32_cryp*) #1

declare dso_local i64 @is_decrypt(%struct.stm32_cryp*) #1

declare dso_local i32 @stm32_cryp_wait_busy(%struct.stm32_cryp*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @stm32_cryp_ccm_init(%struct.stm32_cryp*, i32) #1

declare dso_local i32 @stm32_cryp_gcm_init(%struct.stm32_cryp*, i32) #1

declare dso_local i32 @stm32_cryp_get_input_text_len(%struct.stm32_cryp*) #1

declare dso_local i32 @stm32_cryp_hw_write_iv(%struct.stm32_cryp*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
