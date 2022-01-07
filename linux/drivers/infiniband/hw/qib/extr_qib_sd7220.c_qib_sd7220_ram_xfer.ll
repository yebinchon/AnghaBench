; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_sd7220_ram_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_sd7220.c_qib_sd7220_ram_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EPB_IB_UC_CS_SHF = common dso_local global i64 0, align 8
@kr_ibsd_epb_transaction_reg = common dso_local global i32 0, align 4
@EPB_PCIE_UC_CS_SHF = common dso_local global i64 0, align 8
@kr_pciesd_epb_transaction_reg = common dso_local global i32 0, align 4
@EPB_TRANS_TRIES = common dso_local global i32 0, align 4
@EPB_TRANS_RDY = common dso_local global i32 0, align 4
@EPB_UC_CTL = common dso_local global i32 0, align 4
@EPB_ROM_R = common dso_local global i32 0, align 4
@EPB_ROM_W = common dso_local global i32 0, align 4
@EPB_MADDRH = common dso_local global i32 0, align 4
@EPB_MADDRL = common dso_local global i32 0, align 4
@EPB_ROMDATA = common dso_local global i32 0, align 4
@EPB_RD = common dso_local global i32 0, align 4
@EPB_DATA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, i32, i32, i32*, i32, i32)* @qib_sd7220_ram_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_sd7220_ram_xfer(%struct.qib_devdata* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.qib_devdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
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
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %35 [
    i32 130, label %25
    i32 129, label %30
    i32 128, label %30
  ]

25:                                               ; preds = %6
  %26 = load i64, i64* @EPB_IB_UC_CS_SHF, align 8
  %27 = shl i64 1, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* @kr_ibsd_epb_transaction_reg, align 4
  store i32 %29, i32* %14, align 4
  br label %36

30:                                               ; preds = %6, %6
  %31 = load i64, i64* @EPB_PCIE_UC_CS_SHF, align 8
  %32 = shl i64 1, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* @kr_pciesd_epb_transaction_reg, align 4
  store i32 %34, i32* %14, align 4
  br label %36

35:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %211

36:                                               ; preds = %30, %25
  %37 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %38 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %22, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @epb_access(%struct.qib_devdata* %43, i32 %44, i32 1)
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %36
  %49 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %50 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %22, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  store i32 -1, i32* %7, align 4
  br label %211

55:                                               ; preds = %36
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, 8191
  store i32 %57, i32* %20, align 4
  %58 = load i32, i32* @EPB_TRANS_TRIES, align 4
  store i32 %58, i32* %18, align 4
  br label %59

59:                                               ; preds = %73, %55
  %60 = load i32, i32* %18, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %59
  %63 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @qib_read_kreg32(%struct.qib_devdata* %63, i32 %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* @EPB_TRANS_RDY, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %76

71:                                               ; preds = %62
  %72 = call i32 @udelay(i32 5)
  br label %73

73:                                               ; preds = %71
  %74 = load i32, i32* %18, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %18, align 4
  br label %59

76:                                               ; preds = %70, %59
  store i32 0, i32* %19, align 4
  %77 = load i32, i32* %18, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %192

79:                                               ; preds = %76
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* @EPB_UC_CTL, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* @EPB_ROM_R, align 4
  br label %89

87:                                               ; preds = %79
  %88 = load i32, i32* @EPB_ROM_W, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = or i32 %82, %90
  store i32 %91, i32* %15, align 4
  %92 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @epb_trans(%struct.qib_devdata* %92, i32 %93, i32 %94, i32* %15)
  store i32 %95, i32* %18, align 4
  br label %96

96:                                               ; preds = %181, %89
  %97 = load i32, i32* %18, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp slt i32 %100, %101
  br label %103

103:                                              ; preds = %99, %96
  %104 = phi i1 [ false, %96 ], [ %102, %99 ]
  br i1 %104, label %105, label %184

105:                                              ; preds = %103
  %106 = load i32, i32* %19, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %143, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %20, align 4
  %110 = load i32, i32* %19, align 4
  %111 = add nsw i32 %109, %110
  %112 = ashr i32 %111, 8
  store i32 %112, i32* %23, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* @EPB_MADDRH, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* %23, align 4
  %117 = or i32 %115, %116
  store i32 %117, i32* %15, align 4
  %118 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %15, align 4
  %121 = call i32 @epb_trans(%struct.qib_devdata* %118, i32 %119, i32 %120, i32* %15)
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %18, align 4
  %123 = icmp sle i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %108
  br label %184

125:                                              ; preds = %108
  %126 = load i32, i32* %20, align 4
  %127 = load i32, i32* %19, align 4
  %128 = add nsw i32 %126, %127
  %129 = and i32 %128, 255
  store i32 %129, i32* %23, align 4
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* @EPB_MADDRL, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* %23, align 4
  %134 = or i32 %132, %133
  store i32 %134, i32* %15, align 4
  %135 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %15, align 4
  %138 = call i32 @epb_trans(%struct.qib_devdata* %135, i32 %136, i32 %137, i32* %15)
  store i32 %138, i32* %18, align 4
  %139 = load i32, i32* %18, align 4
  %140 = icmp sle i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %125
  br label %184

142:                                              ; preds = %125
  br label %143

143:                                              ; preds = %142, %105
  %144 = load i32, i32* %13, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* @EPB_ROMDATA, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @EPB_RD, align 4
  %151 = or i32 %149, %150
  store i32 %151, i32* %15, align 4
  br label %162

152:                                              ; preds = %143
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* @EPB_ROMDATA, align 4
  %155 = or i32 %153, %154
  %156 = load i32*, i32** %11, align 8
  %157 = load i32, i32* %19, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %155, %160
  store i32 %161, i32* %15, align 4
  br label %162

162:                                              ; preds = %152, %146
  %163 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %15, align 4
  %166 = call i32 @epb_trans(%struct.qib_devdata* %163, i32 %164, i32 %165, i32* %15)
  store i32 %166, i32* %18, align 4
  %167 = load i32, i32* %18, align 4
  %168 = icmp sle i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  br label %184

170:                                              ; preds = %162
  %171 = load i32, i32* %13, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %170
  %174 = load i32, i32* %15, align 4
  %175 = load i32, i32* @EPB_DATA_MASK, align 4
  %176 = and i32 %174, %175
  %177 = load i32*, i32** %11, align 8
  %178 = load i32, i32* %19, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32 %176, i32* %180, align 4
  br label %181

181:                                              ; preds = %173, %170
  %182 = load i32, i32* %19, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %19, align 4
  br label %96

184:                                              ; preds = %169, %141, %124, %103
  %185 = load i32, i32* %16, align 4
  %186 = load i32, i32* @EPB_UC_CTL, align 4
  %187 = or i32 %185, %186
  store i32 %187, i32* %15, align 4
  %188 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* %15, align 4
  %191 = call i32 @epb_trans(%struct.qib_devdata* %188, i32 %189, i32 %190, i32* %15)
  store i32 %191, i32* %18, align 4
  br label %192

192:                                              ; preds = %184, %76
  %193 = load i32, i32* %19, align 4
  store i32 %193, i32* %21, align 4
  %194 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @epb_access(%struct.qib_devdata* %194, i32 %195, i32 -1)
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %192
  store i32 -1, i32* %21, align 4
  br label %199

199:                                              ; preds = %198, %192
  %200 = load %struct.qib_devdata*, %struct.qib_devdata** %8, align 8
  %201 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %200, i32 0, i32 0
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = load i64, i64* %22, align 8
  %205 = call i32 @spin_unlock_irqrestore(i32* %203, i64 %204)
  %206 = load i32, i32* %18, align 4
  %207 = icmp sle i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %199
  store i32 -1, i32* %21, align 4
  br label %209

209:                                              ; preds = %208, %199
  %210 = load i32, i32* %21, align 4
  store i32 %210, i32* %7, align 4
  br label %211

211:                                              ; preds = %209, %48, %35
  %212 = load i32, i32* %7, align 4
  ret i32 %212
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @epb_access(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qib_read_kreg32(%struct.qib_devdata*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @epb_trans(%struct.qib_devdata*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
