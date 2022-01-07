; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-viperboard.c_vprbrd_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-viperboard.c_vprbrd_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vprbrd = type { i32, i64 }
%struct.i2c_msg = type { i32, i32 }
%struct.vprbrd_i2c_read_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32 }

@VPRBRD_I2C_CMD_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vprbrd*, %struct.i2c_msg*)* @vprbrd_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vprbrd_i2c_read(%struct.vprbrd* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vprbrd*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vprbrd_i2c_read_msg*, align 8
  store %struct.vprbrd* %0, %struct.vprbrd** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.vprbrd*, %struct.vprbrd** %4, align 8
  %13 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.vprbrd_i2c_read_msg*
  store %struct.vprbrd_i2c_read_msg* %15, %struct.vprbrd_i2c_read_msg** %11, align 8
  %16 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @VPRBRD_I2C_CMD_READ, align 4
  %20 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %21 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 9
  store i32 %19, i32* %22, align 8
  br label %23

23:                                               ; preds = %265, %2
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %266

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 16384
  %29 = call i8* @cpu_to_le16(i32 %28)
  %30 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %31 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 8
  store i8* %29, i8** %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = icmp sle i32 %33, 255
  br i1 %34, label %35, label %56

35:                                               ; preds = %26
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %39 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %42 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %45 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  store i32 0, i32* %46, align 8
  %47 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %48 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  store i32 0, i32* %49, align 4
  %50 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %51 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  store i32 0, i32* %52, align 8
  %53 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %54 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 5
  store i32 0, i32* %55, align 4
  store i32 0, i32* %7, align 4
  br label %212

56:                                               ; preds = %26
  %57 = load i32, i32* %7, align 4
  %58 = icmp sle i32 %57, 510
  br i1 %58, label %59, label %81

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %61, 255
  %63 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %64 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %67 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32 255, i32* %68, align 4
  %69 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %70 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i32 0, i32* %71, align 8
  %72 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %73 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  store i32 0, i32* %74, align 4
  %75 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %76 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 4
  store i32 0, i32* %77, align 8
  %78 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %79 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 5
  store i32 0, i32* %80, align 4
  store i32 0, i32* %7, align 4
  br label %211

81:                                               ; preds = %56
  %82 = load i32, i32* %7, align 4
  %83 = icmp sle i32 %82, 512
  br i1 %83, label %84, label %106

84:                                               ; preds = %81
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %86 = load i32, i32* %7, align 4
  %87 = sub nsw i32 %86, 510
  %88 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %89 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %92 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store i32 255, i32* %93, align 4
  %94 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %95 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  store i32 255, i32* %96, align 8
  %97 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %98 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  store i32 0, i32* %99, align 4
  %100 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %101 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 4
  store i32 0, i32* %102, align 8
  %103 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %104 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 5
  store i32 0, i32* %105, align 4
  store i32 0, i32* %7, align 4
  br label %210

106:                                              ; preds = %81
  %107 = load i32, i32* %7, align 4
  %108 = icmp sle i32 %107, 767
  br i1 %108, label %109, label %132

109:                                              ; preds = %106
  store i32 512, i32* %8, align 4
  %110 = load i32, i32* %7, align 4
  %111 = sub nsw i32 %110, 512
  store i32 %111, i32* %9, align 4
  %112 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %113 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i32 2, i32* %114, align 8
  %115 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %116 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  store i32 255, i32* %117, align 4
  %118 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %119 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  store i32 255, i32* %120, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sub nsw i32 %121, 512
  %123 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %124 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 3
  store i32 %122, i32* %125, align 4
  %126 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %127 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 4
  store i32 0, i32* %128, align 8
  %129 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %130 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 5
  store i32 0, i32* %131, align 4
  store i32 0, i32* %7, align 4
  br label %209

132:                                              ; preds = %106
  %133 = load i32, i32* %7, align 4
  %134 = icmp sle i32 %133, 1022
  br i1 %134, label %135, label %158

135:                                              ; preds = %132
  store i32 512, i32* %8, align 4
  %136 = load i32, i32* %7, align 4
  %137 = sub nsw i32 %136, 512
  store i32 %137, i32* %9, align 4
  %138 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %139 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  store i32 2, i32* %140, align 8
  %141 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %142 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  store i32 255, i32* %143, align 4
  %144 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %145 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  store i32 255, i32* %146, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sub nsw i32 %147, 767
  %149 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %150 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 3
  store i32 %148, i32* %151, align 4
  %152 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %153 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 4
  store i32 255, i32* %154, align 8
  %155 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %156 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 5
  store i32 0, i32* %157, align 4
  store i32 0, i32* %7, align 4
  br label %208

158:                                              ; preds = %132
  %159 = load i32, i32* %7, align 4
  %160 = icmp sle i32 %159, 1024
  br i1 %160, label %161, label %184

161:                                              ; preds = %158
  store i32 512, i32* %8, align 4
  %162 = load i32, i32* %7, align 4
  %163 = sub nsw i32 %162, 512
  store i32 %163, i32* %9, align 4
  %164 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %165 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  store i32 2, i32* %166, align 8
  %167 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %168 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  store i32 255, i32* %169, align 4
  %170 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %171 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 2
  store i32 255, i32* %172, align 8
  %173 = load i32, i32* %7, align 4
  %174 = sub nsw i32 %173, 1022
  %175 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %176 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 3
  store i32 %174, i32* %177, align 4
  %178 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %179 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 4
  store i32 255, i32* %180, align 8
  %181 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %182 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 5
  store i32 255, i32* %183, align 4
  store i32 0, i32* %7, align 4
  br label %207

184:                                              ; preds = %158
  store i32 512, i32* %8, align 4
  store i32 512, i32* %9, align 4
  %185 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %186 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  store i32 2, i32* %187, align 8
  %188 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %189 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 1
  store i32 255, i32* %190, align 4
  %191 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %192 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 2
  store i32 255, i32* %193, align 8
  %194 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %195 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 3
  store i32 2, i32* %196, align 4
  %197 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %198 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 4
  store i32 255, i32* %199, align 8
  %200 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %201 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 5
  store i32 255, i32* %202, align 4
  %203 = load i32, i32* %7, align 4
  %204 = sub nsw i32 %203, 1024
  store i32 %204, i32* %7, align 4
  %205 = load i32, i32* %10, align 4
  %206 = add nsw i32 %205, 1024
  store i32 %206, i32* %10, align 4
  br label %207

207:                                              ; preds = %184, %161
  br label %208

208:                                              ; preds = %207, %135
  br label %209

209:                                              ; preds = %208, %109
  br label %210

210:                                              ; preds = %209, %84
  br label %211

211:                                              ; preds = %210, %59
  br label %212

212:                                              ; preds = %211, %35
  %213 = load i32, i32* %8, align 4
  %214 = call i8* @cpu_to_le16(i32 %213)
  %215 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %216 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 7
  store i8* %214, i8** %217, align 8
  %218 = load i32, i32* %9, align 4
  %219 = call i8* @cpu_to_le16(i32 %218)
  %220 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %221 = getelementptr inbounds %struct.vprbrd_i2c_read_msg, %struct.vprbrd_i2c_read_msg* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 6
  store i8* %219, i8** %222, align 8
  %223 = load %struct.vprbrd*, %struct.vprbrd** %4, align 8
  %224 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %227 = load i32, i32* %8, align 4
  %228 = call i32 @vprbrd_i2c_receive(i32 %225, %struct.vprbrd_i2c_read_msg* %226, i32 %227)
  store i32 %228, i32* %6, align 4
  %229 = load i32, i32* %6, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %212
  %232 = load i32, i32* %6, align 4
  store i32 %232, i32* %3, align 4
  br label %267

233:                                              ; preds = %212
  %234 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %235 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %10, align 4
  %238 = add nsw i32 %236, %237
  %239 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %240 = load i32, i32* %8, align 4
  %241 = call i32 @memcpy(i32 %238, %struct.vprbrd_i2c_read_msg* %239, i32 %240)
  %242 = load i32, i32* %9, align 4
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %244, label %265

244:                                              ; preds = %233
  %245 = load %struct.vprbrd*, %struct.vprbrd** %4, align 8
  %246 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %249 = load i32, i32* %9, align 4
  %250 = call i32 @vprbrd_i2c_receive(i32 %247, %struct.vprbrd_i2c_read_msg* %248, i32 %249)
  store i32 %250, i32* %6, align 4
  %251 = load i32, i32* %6, align 4
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %244
  %254 = load i32, i32* %6, align 4
  store i32 %254, i32* %3, align 4
  br label %267

255:                                              ; preds = %244
  %256 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %257 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %10, align 4
  %260 = add nsw i32 %258, %259
  %261 = add nsw i32 %260, 512
  %262 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %11, align 8
  %263 = load i32, i32* %9, align 4
  %264 = call i32 @memcpy(i32 %261, %struct.vprbrd_i2c_read_msg* %262, i32 %263)
  br label %265

265:                                              ; preds = %255, %233
  br label %23

266:                                              ; preds = %23
  store i32 0, i32* %3, align 4
  br label %267

267:                                              ; preds = %266, %253, %231
  %268 = load i32, i32* %3, align 4
  ret i32 %268
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @vprbrd_i2c_receive(i32, %struct.vprbrd_i2c_read_msg*, i32) #1

declare dso_local i32 @memcpy(i32, %struct.vprbrd_i2c_read_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
