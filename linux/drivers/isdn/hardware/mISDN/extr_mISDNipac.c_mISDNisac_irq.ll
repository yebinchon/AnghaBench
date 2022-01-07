; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_mISDNisac_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_mISDNisac_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac_hw = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: ISAC interrupt %02x\0A\00", align 1
@IPAC_TYPE_ISACX = common dso_local global i32 0, align 4
@ISACX__CIC = common dso_local global i32 0, align 4
@ISACX__ICD = common dso_local global i32 0, align 4
@ISACX_ISTAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%s: ISTAD %02x\0A\00", align 1
@ISACX_D_XDU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"%s: ISAC XDU\0A\00", align 1
@ISACX_D_XMR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"%s: ISAC XMR\0A\00", align 1
@ISACX_D_XPR = common dso_local global i32 0, align 4
@ISACX_D_RFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"%s: ISAC RFO\0A\00", align 1
@ISACX_CMDRD = common dso_local global i32 0, align 4
@ISACX_CMDRD_RMC = common dso_local global i32 0, align 4
@ISACX_D_RME = common dso_local global i32 0, align 4
@ISACX_D_RPF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"%s: ISAC RSC interrupt\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"%s: ISAC SIN interrupt\0A\00", align 1
@ISAC_EXIR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"%s: ISAC EXIR %02x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mISDNisac_irq(%struct.isac_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isac_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.isac_hw* %0, %struct.isac_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @IRQ_NONE, align 4
  store i32 %13, i32* %3, align 4
  br label %200

14:                                               ; preds = %2
  %15 = load %struct.isac_hw*, %struct.isac_hw** %4, align 8
  %16 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load %struct.isac_hw*, %struct.isac_hw** %4, align 8
  %21 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IPAC_TYPE_ISACX, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %111

26:                                               ; preds = %14
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @ISACX__CIC, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.isac_hw*, %struct.isac_hw** %4, align 8
  %33 = call i32 @isacsx_cic_irq(%struct.isac_hw* %32)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @ISACX__ICD, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %110

39:                                               ; preds = %34
  %40 = load %struct.isac_hw*, %struct.isac_hw** %4, align 8
  %41 = load i32, i32* @ISACX_ISTAD, align 4
  %42 = call i32 @ReadISAC(%struct.isac_hw* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load %struct.isac_hw*, %struct.isac_hw** %4, align 8
  %44 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @ISACX_D_XDU, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %39
  %53 = load %struct.isac_hw*, %struct.isac_hw** %4, align 8
  %54 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load %struct.isac_hw*, %struct.isac_hw** %4, align 8
  %58 = call i32 @isac_retransmit(%struct.isac_hw* %57)
  br label %59

59:                                               ; preds = %52, %39
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @ISACX_D_XMR, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.isac_hw*, %struct.isac_hw** %4, align 8
  %66 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load %struct.isac_hw*, %struct.isac_hw** %4, align 8
  %70 = call i32 @isac_retransmit(%struct.isac_hw* %69)
  br label %71

71:                                               ; preds = %64, %59
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @ISACX_D_XPR, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.isac_hw*, %struct.isac_hw** %4, align 8
  %78 = call i32 @isac_xpr_irq(%struct.isac_hw* %77)
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @ISACX_D_RFO, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = load %struct.isac_hw*, %struct.isac_hw** %4, align 8
  %86 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = load %struct.isac_hw*, %struct.isac_hw** %4, align 8
  %90 = load i32, i32* @ISACX_CMDRD, align 4
  %91 = load i32, i32* @ISACX_CMDRD_RMC, align 4
  %92 = call i32 @WriteISAC(%struct.isac_hw* %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %84, %79
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @ISACX_D_RME, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load %struct.isac_hw*, %struct.isac_hw** %4, align 8
  %100 = call i32 @isacsx_rme_irq(%struct.isac_hw* %99)
  br label %101

101:                                              ; preds = %98, %93
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @ISACX_D_RPF, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.isac_hw*, %struct.isac_hw** %4, align 8
  %108 = call i32 @isac_empty_fifo(%struct.isac_hw* %107, i32 32)
  br label %109

109:                                              ; preds = %106, %101
  br label %110

110:                                              ; preds = %109, %34
  br label %198

111:                                              ; preds = %14
  %112 = load i32, i32* %5, align 4
  %113 = and i32 %112, 128
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load %struct.isac_hw*, %struct.isac_hw** %4, align 8
  %117 = call i32 @isac_rme_irq(%struct.isac_hw* %116)
  br label %118

118:                                              ; preds = %115, %111
  %119 = load i32, i32* %5, align 4
  %120 = and i32 %119, 64
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load %struct.isac_hw*, %struct.isac_hw** %4, align 8
  %124 = call i32 @isac_empty_fifo(%struct.isac_hw* %123, i32 32)
  br label %125

125:                                              ; preds = %122, %118
  %126 = load i32, i32* %5, align 4
  %127 = and i32 %126, 16
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load %struct.isac_hw*, %struct.isac_hw** %4, align 8
  %131 = call i32 @isac_xpr_irq(%struct.isac_hw* %130)
  br label %132

132:                                              ; preds = %129, %125
  %133 = load i32, i32* %5, align 4
  %134 = and i32 %133, 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load %struct.isac_hw*, %struct.isac_hw** %4, align 8
  %138 = call i32 @isac_cisq_irq(%struct.isac_hw* %137)
  br label %139

139:                                              ; preds = %136, %132
  %140 = load i32, i32* %5, align 4
  %141 = and i32 %140, 32
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load %struct.isac_hw*, %struct.isac_hw** %4, align 8
  %145 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %143, %139
  %149 = load i32, i32* %5, align 4
  %150 = and i32 %149, 2
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = load %struct.isac_hw*, %struct.isac_hw** %4, align 8
  %154 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %152, %148
  %158 = load i32, i32* %5, align 4
  %159 = and i32 %158, 1
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %197

161:                                              ; preds = %157
  %162 = load %struct.isac_hw*, %struct.isac_hw** %4, align 8
  %163 = load i32, i32* @ISAC_EXIR, align 4
  %164 = call i32 @ReadISAC(%struct.isac_hw* %162, i32 %163)
  store i32 %164, i32* %5, align 4
  %165 = load %struct.isac_hw*, %struct.isac_hw** %4, align 8
  %166 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %5, align 4
  %169 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %167, i32 %168)
  %170 = load i32, i32* %5, align 4
  %171 = and i32 %170, 128
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %161
  %174 = load %struct.isac_hw*, %struct.isac_hw** %4, align 8
  %175 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %176)
  br label %178

178:                                              ; preds = %173, %161
  %179 = load i32, i32* %5, align 4
  %180 = and i32 %179, 64
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %178
  %183 = load %struct.isac_hw*, %struct.isac_hw** %4, align 8
  %184 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %185)
  %187 = load %struct.isac_hw*, %struct.isac_hw** %4, align 8
  %188 = call i32 @isac_retransmit(%struct.isac_hw* %187)
  br label %189

189:                                              ; preds = %182, %178
  %190 = load i32, i32* %5, align 4
  %191 = and i32 %190, 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load %struct.isac_hw*, %struct.isac_hw** %4, align 8
  %195 = call i32 @isac_mos_irq(%struct.isac_hw* %194)
  br label %196

196:                                              ; preds = %193, %189
  br label %197

197:                                              ; preds = %196, %157
  br label %198

198:                                              ; preds = %197, %110
  %199 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %199, i32* %3, align 4
  br label %200

200:                                              ; preds = %198, %12
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @isacsx_cic_irq(%struct.isac_hw*) #1

declare dso_local i32 @ReadISAC(%struct.isac_hw*, i32) #1

declare dso_local i32 @isac_retransmit(%struct.isac_hw*) #1

declare dso_local i32 @isac_xpr_irq(%struct.isac_hw*) #1

declare dso_local i32 @WriteISAC(%struct.isac_hw*, i32, i32) #1

declare dso_local i32 @isacsx_rme_irq(%struct.isac_hw*) #1

declare dso_local i32 @isac_empty_fifo(%struct.isac_hw*, i32) #1

declare dso_local i32 @isac_rme_irq(%struct.isac_hw*) #1

declare dso_local i32 @isac_cisq_irq(%struct.isac_hw*) #1

declare dso_local i32 @isac_mos_irq(%struct.isac_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
