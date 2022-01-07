; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_7220intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_7220intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, i32*, i32* }

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
@QLOGIC_IB_I_SDMAINT = common dso_local global i32 0, align 4
@QLOGIC_IB_I_SPIOBUFAVAIL = common dso_local global i32 0, align 4
@QIB_INITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qib_7220intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_7220intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.qib_devdata*
  store %struct.qib_devdata* %12, %struct.qib_devdata** %5, align 8
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %14 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @QIB_PRESENT, align 4
  %17 = load i32, i32* @QIB_BADINTR, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = load i32, i32* @QIB_PRESENT, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %23, i32* %6, align 4
  br label %164

24:                                               ; preds = %2
  %25 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %26 = load i32, i32* @kr_intstatus, align 4
  %27 = call i32 @qib_read_kreg64(%struct.qib_devdata* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @IRQ_NONE, align 4
  store i32 %35, i32* %6, align 4
  br label %164

36:                                               ; preds = %24
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, -1
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %44 = call i32 @qib_bad_intrstatus(%struct.qib_devdata* %43)
  %45 = load i32, i32* @IRQ_NONE, align 4
  store i32 %45, i32* %6, align 4
  br label %164

46:                                               ; preds = %36
  %47 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %48 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @this_cpu_inc(i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @QLOGIC_IB_I_BITSEXTANT, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* @QLOGIC_IB_I_GPIO, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @QLOGIC_IB_I_ERROR, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %52, %58
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %46
  %63 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @unlikely_7220_intr(%struct.qib_devdata* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %46
  %67 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %68 = load i32, i32* @kr_intclear, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @qib_write_kreg(%struct.qib_devdata* %67, i32 %68, i32 %69)
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @QLOGIC_IB_I_RCVAVAIL_MASK, align 4
  %73 = load i32, i32* @QLOGIC_IB_I_RCVAVAIL_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* @QLOGIC_IB_I_RCVURG_MASK, align 4
  %76 = load i32, i32* @QLOGIC_IB_I_RCVURG_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = or i32 %74, %77
  %79 = and i32 %71, %78
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %136

82:                                               ; preds = %66
  %83 = load i32, i32* @QLOGIC_IB_I_RCVAVAIL_SHIFT, align 4
  %84 = zext i32 %83 to i64
  %85 = shl i64 1, %84
  %86 = load i32, i32* @QLOGIC_IB_I_RCVURG_SHIFT, align 4
  %87 = zext i32 %86 to i64
  %88 = shl i64 1, %87
  %89 = or i64 %85, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %91

91:                                               ; preds = %118, %82
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %94 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ult i32 %92, %95
  br i1 %96, label %97, label %121

97:                                               ; preds = %91
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %97
  %103 = load i32, i32* %9, align 4
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %8, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %8, align 4
  %107 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %108 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @qib_kreceive(i32 %113, i32* null, i32* null)
  br label %115

115:                                              ; preds = %102, %97
  %116 = load i32, i32* %9, align 4
  %117 = shl i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %10, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %91

121:                                              ; preds = %91
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %121
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @QLOGIC_IB_I_RCVAVAIL_SHIFT, align 4
  %127 = ashr i32 %125, %126
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @QLOGIC_IB_I_RCVURG_SHIFT, align 4
  %130 = ashr i32 %128, %129
  %131 = or i32 %127, %130
  store i32 %131, i32* %8, align 4
  %132 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @qib_handle_urcv(%struct.qib_devdata* %132, i32 %133)
  br label %135

135:                                              ; preds = %124, %121
  br label %136

136:                                              ; preds = %135, %66
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @QLOGIC_IB_I_SDMAINT, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %143 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @sdma_7220_intr(i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %141, %136
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* @QLOGIC_IB_I_SPIOBUFAVAIL, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %147
  %153 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %154 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @QIB_INITTED, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %152
  %160 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %161 = call i32 @qib_ib_piobufavail(%struct.qib_devdata* %160)
  br label %162

162:                                              ; preds = %159, %152, %147
  %163 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %163, i32* %6, align 4
  br label %164

164:                                              ; preds = %162, %42, %34, %22
  %165 = load i32, i32* %6, align 4
  ret i32 %165
}

declare dso_local i32 @qib_read_kreg64(%struct.qib_devdata*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qib_bad_intrstatus(%struct.qib_devdata*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i32 @unlikely_7220_intr(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @qib_kreceive(i32, i32*, i32*) #1

declare dso_local i32 @qib_handle_urcv(%struct.qib_devdata*, i32) #1

declare dso_local i32 @sdma_7220_intr(i32, i32) #1

declare dso_local i32 @qib_ib_piobufavail(%struct.qib_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
