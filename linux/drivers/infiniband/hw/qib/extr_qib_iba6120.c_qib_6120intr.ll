; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_6120intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_6120intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@QIB_PRESENT = common dso_local global i32 0, align 4
@QIB_BADINTR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@kr_intstatus = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@QLOGIC_IB_I_BITSEXTANT = common dso_local global i32 0, align 4
@QLOGIC_IB_I_GPIO = common dso_local global i32 0, align 4
@QLOGIC_IB_I_ERROR = common dso_local global i32 0, align 4
@kr_intclear = common dso_local global i32 0, align 4
@QLOGIC_IB_I_RCVAVAIL_MASK = common dso_local global i32 0, align 4
@QLOGIC_IB_I_RCVAVAIL_SHIFT = common dso_local global i32 0, align 4
@QLOGIC_IB_I_RCVURG_MASK = common dso_local global i32 0, align 4
@QLOGIC_IB_I_RCVURG_SHIFT = common dso_local global i32 0, align 4
@QLOGIC_IB_I_SPIOBUFAVAIL = common dso_local global i32 0, align 4
@QIB_INITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qib_6120intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_6120intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.qib_devdata*
  store %struct.qib_devdata* %14, %struct.qib_devdata** %5, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @QIB_PRESENT, align 4
  %19 = load i32, i32* @QIB_BADINTR, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = load i32, i32* @QIB_PRESENT, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %25, i32* %6, align 4
  br label %201

26:                                               ; preds = %2
  %27 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %28 = load i32, i32* @kr_intstatus, align 4
  %29 = call i32 @qib_read_kreg32(%struct.qib_devdata* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* @IRQ_NONE, align 4
  store i32 %37, i32* %6, align 4
  br label %201

38:                                               ; preds = %26
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, -1
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %46 = call i32 @qib_bad_intrstatus(%struct.qib_devdata* %45)
  %47 = load i32, i32* @IRQ_NONE, align 4
  store i32 %47, i32* %6, align 4
  br label %201

48:                                               ; preds = %38
  %49 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %50 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @this_cpu_inc(i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @QLOGIC_IB_I_BITSEXTANT, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* @QLOGIC_IB_I_GPIO, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @QLOGIC_IB_I_ERROR, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %54, %60
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %48
  %65 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @unlikely_6120_intr(%struct.qib_devdata* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %48
  %69 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %70 = load i32, i32* @kr_intclear, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @qib_write_kreg(%struct.qib_devdata* %69, i32 %70, i32 %71)
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @QLOGIC_IB_I_RCVAVAIL_MASK, align 4
  %75 = load i32, i32* @QLOGIC_IB_I_RCVAVAIL_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = load i32, i32* @QLOGIC_IB_I_RCVURG_MASK, align 4
  %78 = load i32, i32* @QLOGIC_IB_I_RCVURG_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = or i32 %76, %79
  %81 = and i32 %73, %80
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %184

84:                                               ; preds = %68
  %85 = load i32, i32* @QLOGIC_IB_I_RCVAVAIL_SHIFT, align 4
  %86 = shl i32 1, %85
  %87 = load i32, i32* @QLOGIC_IB_I_RCVURG_SHIFT, align 4
  %88 = shl i32 1, %87
  %89 = or i32 %86, %88
  store i32 %89, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %123, %84
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %93 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ult i32 %91, %94
  br i1 %95, label %96, label %126

96:                                               ; preds = %90
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %9, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %120

101:                                              ; preds = %96
  %102 = load i32, i32* %9, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %8, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %8, align 4
  %106 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %107 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %114 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %113, i32 0, i32 2
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = call i32 @qib_kreceive(i32 %112, i32* %116, i32* null)
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %101, %96
  %121 = load i32, i32* %9, align 4
  %122 = shl i32 %121, 1
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %11, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %90

126:                                              ; preds = %90
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %169

129:                                              ; preds = %126
  %130 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %131 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %130, i32 0, i32 2
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %12, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %168

140:                                              ; preds = %129
  %141 = load i32, i32* %12, align 4
  %142 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %143 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %142, i32 0, i32 2
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp sgt i32 %141, %146
  br i1 %147, label %148, label %159

148:                                              ; preds = %140
  %149 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %150 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %149, i32 0, i32 2
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  store i32 0, i32* %152, align 4
  %153 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %154 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %153, i32 0, i32 2
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  br label %167

159:                                              ; preds = %140
  %160 = load i32, i32* %12, align 4
  %161 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %162 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %161, i32 0, i32 2
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, %160
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %159, %148
  br label %168

168:                                              ; preds = %167, %129
  br label %169

169:                                              ; preds = %168, %126
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %169
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @QLOGIC_IB_I_RCVAVAIL_SHIFT, align 4
  %175 = ashr i32 %173, %174
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* @QLOGIC_IB_I_RCVURG_SHIFT, align 4
  %178 = ashr i32 %176, %177
  %179 = or i32 %175, %178
  store i32 %179, i32* %8, align 4
  %180 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @qib_handle_urcv(%struct.qib_devdata* %180, i32 %181)
  br label %183

183:                                              ; preds = %172, %169
  br label %184

184:                                              ; preds = %183, %68
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* @QLOGIC_IB_I_SPIOBUFAVAIL, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %184
  %190 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %191 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @QIB_INITTED, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %189
  %197 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %198 = call i32 @qib_ib_piobufavail(%struct.qib_devdata* %197)
  br label %199

199:                                              ; preds = %196, %189, %184
  %200 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %200, i32* %6, align 4
  br label %201

201:                                              ; preds = %199, %44, %36, %24
  %202 = load i32, i32* %6, align 4
  ret i32 %202
}

declare dso_local i32 @qib_read_kreg32(%struct.qib_devdata*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qib_bad_intrstatus(%struct.qib_devdata*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i32 @unlikely_6120_intr(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @qib_kreceive(i32, i32*, i32*) #1

declare dso_local i32 @qib_handle_urcv(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_ib_piobufavail(%struct.qib_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
