; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i64*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@QIB_PRESENT = common dso_local global i32 0, align 4
@QIB_BADINTR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@kr_intstatus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Interrupt status all f's, skipping\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@QIB_I_BITSEXTANT = common dso_local global i64 0, align 8
@QIB_I_GPIO = common dso_local global i64 0, align 8
@QIB_I_C_ERROR = common dso_local global i64 0, align 8
@Err = common dso_local global i32 0, align 4
@kr_intclear = common dso_local global i32 0, align 4
@QIB_I_RCVAVAIL_MASK = common dso_local global i64 0, align 8
@QIB_I_RCVURG_MASK = common dso_local global i64 0, align 8
@QIB_I_RCVAVAIL_LSB = common dso_local global i64 0, align 8
@QIB_I_RCVURG_LSB = common dso_local global i64 0, align 8
@QIB_I_SPIOBUFAVAIL = common dso_local global i64 0, align 8
@QIB_INITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qib_7322intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_7322intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.qib_devdata*
  store %struct.qib_devdata* %13, %struct.qib_devdata** %5, align 8
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %15 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @QIB_PRESENT, align 4
  %18 = load i32, i32* @QIB_BADINTR, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = load i32, i32* @QIB_PRESENT, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %24, i32* %6, align 4
  br label %185

25:                                               ; preds = %2
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %27 = load i32, i32* @kr_intstatus, align 4
  %28 = call i64 @qib_read_kreg64(%struct.qib_devdata* %26, i32 %27)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp eq i64 %29, -1
  %31 = zext i1 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = call i64 @unlikely(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %37 = call i32 @qib_bad_intrstatus(%struct.qib_devdata* %36)
  %38 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %39 = call i32 @qib_dev_err(%struct.qib_devdata* %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @IRQ_NONE, align 4
  store i32 %40, i32* %6, align 4
  br label %185

41:                                               ; preds = %25
  %42 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %43 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %42, i32 0, i32 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = and i64 %47, %46
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = sext i32 %52 to i64
  %54 = call i64 @unlikely(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = load i32, i32* @IRQ_NONE, align 4
  store i32 %57, i32* %6, align 4
  br label %185

58:                                               ; preds = %41
  %59 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %60 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @this_cpu_inc(i32 %62)
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* @QIB_I_BITSEXTANT, align 8
  %66 = xor i64 %65, -1
  %67 = load i64, i64* @QIB_I_GPIO, align 8
  %68 = or i64 %66, %67
  %69 = load i64, i64* @QIB_I_C_ERROR, align 8
  %70 = or i64 %68, %69
  %71 = load i32, i32* @Err, align 4
  %72 = call i64 @INT_MASK_P(i32 %71, i32 0)
  %73 = or i64 %70, %72
  %74 = load i32, i32* @Err, align 4
  %75 = call i64 @INT_MASK_P(i32 %74, i32 1)
  %76 = or i64 %73, %75
  %77 = and i64 %64, %76
  %78 = call i64 @unlikely(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %58
  %81 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @unlikely_7322_intr(%struct.qib_devdata* %81, i64 %82)
  br label %84

84:                                               ; preds = %80, %58
  %85 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %86 = load i32, i32* @kr_intclear, align 4
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @qib_write_kreg(%struct.qib_devdata* %85, i32 %86, i64 %87)
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @QIB_I_RCVAVAIL_MASK, align 8
  %91 = load i64, i64* @QIB_I_RCVURG_MASK, align 8
  %92 = or i64 %90, %91
  %93 = and i64 %89, %92
  store i64 %93, i64* %8, align 8
  %94 = load i64, i64* %8, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %157

96:                                               ; preds = %84
  %97 = load i64, i64* @QIB_I_RCVAVAIL_LSB, align 8
  %98 = shl i64 1, %97
  %99 = load i64, i64* @QIB_I_RCVURG_LSB, align 8
  %100 = shl i64 1, %99
  %101 = or i64 %98, %100
  store i64 %101, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %139, %96
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %105 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ult i32 %103, %106
  br i1 %107, label %108, label %142

108:                                              ; preds = %102
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* %9, align 8
  %111 = and i64 %109, %110
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %136

113:                                              ; preds = %108
  %114 = load i64, i64* %9, align 8
  %115 = xor i64 %114, -1
  %116 = load i64, i64* %8, align 8
  %117 = and i64 %116, %115
  store i64 %117, i64* %8, align 8
  %118 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %119 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %118, i32 0, i32 2
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %113
  %127 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %128 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %127, i32 0, i32 2
  %129 = load i64*, i64** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %129, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @qib_kreceive(i64 %133, i32* null, i32* %11)
  br label %135

135:                                              ; preds = %126, %113
  br label %136

136:                                              ; preds = %135, %108
  %137 = load i64, i64* %9, align 8
  %138 = shl i64 %137, 1
  store i64 %138, i64* %9, align 8
  br label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %10, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %10, align 4
  br label %102

142:                                              ; preds = %102
  %143 = load i64, i64* %8, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %142
  %146 = load i64, i64* %8, align 8
  %147 = load i64, i64* @QIB_I_RCVAVAIL_LSB, align 8
  %148 = lshr i64 %146, %147
  %149 = load i64, i64* %8, align 8
  %150 = load i64, i64* @QIB_I_RCVURG_LSB, align 8
  %151 = lshr i64 %149, %150
  %152 = or i64 %148, %151
  store i64 %152, i64* %8, align 8
  %153 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %154 = load i64, i64* %8, align 8
  %155 = call i32 @qib_handle_urcv(%struct.qib_devdata* %153, i64 %154)
  br label %156

156:                                              ; preds = %145, %142
  br label %157

157:                                              ; preds = %156, %84
  %158 = load i64, i64* %7, align 8
  %159 = call i64 @QIB_I_P_SDMAINT(i32 0)
  %160 = call i64 @QIB_I_P_SDMAINT(i32 1)
  %161 = or i64 %159, %160
  %162 = and i64 %158, %161
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %157
  %165 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %166 = load i64, i64* %7, align 8
  %167 = call i32 @sdma_7322_intr(%struct.qib_devdata* %165, i64 %166)
  br label %168

168:                                              ; preds = %164, %157
  %169 = load i64, i64* %7, align 8
  %170 = load i64, i64* @QIB_I_SPIOBUFAVAIL, align 8
  %171 = and i64 %169, %170
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %168
  %174 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %175 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @QIB_INITTED, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %173
  %181 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %182 = call i32 @qib_ib_piobufavail(%struct.qib_devdata* %181)
  br label %183

183:                                              ; preds = %180, %173, %168
  %184 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %184, i32* %6, align 4
  br label %185

185:                                              ; preds = %183, %56, %35, %23
  %186 = load i32, i32* %6, align 4
  ret i32 %186
}

declare dso_local i64 @qib_read_kreg64(%struct.qib_devdata*, i32) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @qib_bad_intrstatus(%struct.qib_devdata*) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i64 @INT_MASK_P(i32, i32) #1

declare dso_local i32 @unlikely_7322_intr(%struct.qib_devdata*, i64) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i64) #1

declare dso_local i32 @qib_kreceive(i64, i32*, i32*) #1

declare dso_local i32 @qib_handle_urcv(%struct.qib_devdata*, i64) #1

declare dso_local i64 @QIB_I_P_SDMAINT(i32) #1

declare dso_local i32 @sdma_7322_intr(%struct.qib_devdata*, i64) #1

declare dso_local i32 @qib_ib_piobufavail(%struct.qib_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
