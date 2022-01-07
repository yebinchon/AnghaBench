; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_cec_pin_adap_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_cec_pin_adap_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cec_adapter = type { %struct.cec_pin* }
%struct.cec_pin = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.cec_adapter*)*, i32 (%struct.cec_adapter*, %struct.seq_file*)* }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"state: %s\0A\00", align 1
@states = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"tx_bit: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"rx_bit: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"cec pin: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"cec pin events dropped: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"irq failed: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"timer overruns > 100ms: %u of %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"timer overruns > 300ms: %u of %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"max timer overrun: %u usecs\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"avg timer overrun: %u usecs\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"rx start bit low too short: %u (delta %u, ts %llu)\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"rx start bit too short: %u (delta %u, ts %llu)\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"rx start bit too long: %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"rx data bit too short: %u (delta %u, ts %llu)\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"rx data bit too long: %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"rx initiated low drive: %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"tx detected low drive: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cec_adapter*, %struct.seq_file*)* @cec_pin_adap_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cec_pin_adap_status(%struct.cec_adapter* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.cec_adapter*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.cec_pin*, align 8
  store %struct.cec_adapter* %0, %struct.cec_adapter** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %6 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %6, i32 0, i32 0
  %8 = load %struct.cec_pin*, %struct.cec_pin** %7, align 8
  store %struct.cec_pin* %8, %struct.cec_pin** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @states, align 8
  %11 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %12 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %19 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %20 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %24 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %25 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %29 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %30 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %29, i32 0, i32 15
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (%struct.cec_adapter*)*, i32 (%struct.cec_adapter*)** %32, align 8
  %34 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %35 = call i32 %33(%struct.cec_adapter* %34)
  %36 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %38 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %39 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  %42 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %43 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %44 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %45)
  %47 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %48 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %83

51:                                               ; preds = %2
  %52 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %53 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %54 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %57 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %56, i32 0, i32 17
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %55, i64 %58)
  %60 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %61 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %62 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %61, i32 0, i32 16
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %66 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %65, i32 0, i32 17
  %67 = load i64, i64* %66, align 8
  %68 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %64, i64 %67)
  %69 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %70 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %71 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %72)
  %74 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %75 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %76 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %79 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = sdiv i32 %77, %80
  %82 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %51, %2
  %84 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %85 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %83
  %89 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %90 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %91 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %94 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %93, i32 0, i32 23
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %97 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %96, i32 0, i32 22
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %89, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i32 %92, i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %88, %83
  %101 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %102 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %101, i32 0, i32 9
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %100
  %106 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %107 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %108 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %107, i32 0, i32 9
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %111 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %110, i32 0, i32 21
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %114 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %113, i32 0, i32 20
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %106, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0), i32 %109, i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %105, %100
  %118 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %119 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %118, i32 0, i32 10
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %124 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %125 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %124, i32 0, i32 10
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %123, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %122, %117
  %129 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %130 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %129, i32 0, i32 11
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %128
  %134 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %135 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %136 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %135, i32 0, i32 11
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %139 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %138, i32 0, i32 19
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %142 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %141, i32 0, i32 18
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %134, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i32 %137, i32 %140, i32 %143)
  br label %145

145:                                              ; preds = %133, %128
  %146 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %147 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %146, i32 0, i32 12
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %152 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %153 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %152, i32 0, i32 12
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %151, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %150, %145
  %157 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %158 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %159 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %158, i32 0, i32 13
  %160 = load i32, i32* %159, align 8
  %161 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %157, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 %160)
  %162 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %163 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %164 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %163, i32 0, i32 14
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %162, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 %165)
  %167 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %168 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %167, i32 0, i32 3
  store i32 0, i32* %168, align 8
  %169 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %170 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %169, i32 0, i32 17
  store i64 0, i64* %170, align 8
  %171 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %172 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %171, i32 0, i32 5
  store i32 0, i32* %172, align 8
  %173 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %174 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %173, i32 0, i32 16
  store i64 0, i64* %174, align 8
  %175 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %176 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %175, i32 0, i32 6
  store i32 0, i32* %176, align 4
  %177 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %178 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %177, i32 0, i32 7
  store i32 0, i32* %178, align 8
  %179 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %180 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %179, i32 0, i32 8
  store i32 0, i32* %180, align 4
  %181 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %182 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %181, i32 0, i32 9
  store i32 0, i32* %182, align 8
  %183 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %184 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %183, i32 0, i32 10
  store i32 0, i32* %184, align 4
  %185 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %186 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %185, i32 0, i32 11
  store i32 0, i32* %186, align 8
  %187 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %188 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %187, i32 0, i32 12
  store i32 0, i32* %188, align 4
  %189 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %190 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %189, i32 0, i32 13
  store i32 0, i32* %190, align 8
  %191 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %192 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %191, i32 0, i32 14
  store i32 0, i32* %192, align 4
  %193 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %194 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %193, i32 0, i32 15
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 1
  %197 = load i32 (%struct.cec_adapter*, %struct.seq_file*)*, i32 (%struct.cec_adapter*, %struct.seq_file*)** %196, align 8
  %198 = icmp ne i32 (%struct.cec_adapter*, %struct.seq_file*)* %197, null
  br i1 %198, label %199, label %208

199:                                              ; preds = %156
  %200 = load %struct.cec_pin*, %struct.cec_pin** %5, align 8
  %201 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %200, i32 0, i32 15
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 1
  %204 = load i32 (%struct.cec_adapter*, %struct.seq_file*)*, i32 (%struct.cec_adapter*, %struct.seq_file*)** %203, align 8
  %205 = load %struct.cec_adapter*, %struct.cec_adapter** %3, align 8
  %206 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %207 = call i32 %204(%struct.cec_adapter* %205, %struct.seq_file* %206)
  br label %208

208:                                              ; preds = %199, %156
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
