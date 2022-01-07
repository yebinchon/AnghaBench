; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-blinkm.c_blinkm_transfer_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-blinkm.c_blinkm_transfer_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.blinkm_data = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"BlinkM: cmd %d not implemented yet.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"BlinkM: unknown command %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @blinkm_transfer_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blinkm_transfer_hw(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.blinkm_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %8 = call %struct.blinkm_data* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.blinkm_data* %8, %struct.blinkm_data** %6, align 8
  %9 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %10 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %9, i32 0, i32 0
  %11 = call i64 @mutex_lock_interruptible(i32* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EAGAIN, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %237

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %223 [
    i32 142, label %18
    i32 137, label %18
    i32 141, label %18
    i32 144, label %67
    i32 143, label %67
    i32 136, label %110
    i32 129, label %138
    i32 139, label %142
    i32 140, label %194
    i32 130, label %218
    i32 133, label %218
    i32 135, label %218
    i32 128, label %218
    i32 132, label %218
    i32 134, label %218
    i32 138, label %218
    i32 131, label %218
  ]

18:                                               ; preds = %16, %16, %16
  %19 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %20 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %19, i32 0, i32 17
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %23 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %21, i32* %25, align 4
  %26 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %27 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %26, i32 0, i32 16
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %30 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 %28, i32* %32, align 4
  %33 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %34 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %33, i32 0, i32 15
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %37 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  store i32 %35, i32* %39, align 4
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %43 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @blinkm_write(%struct.i2c_client* %40, i32 %41, i32* %44)
  %46 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %47 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %52 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %54 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %59 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %61 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %66 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  br label %233

67:                                               ; preds = %16, %16
  %68 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %69 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %68, i32 0, i32 13
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %72 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 %70, i32* %74, align 4
  %75 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %76 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %75, i32 0, i32 11
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %79 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 %77, i32* %81, align 4
  %82 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %83 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %86 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  store i32 %84, i32* %88, align 4
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %92 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @blinkm_write(%struct.i2c_client* %89, i32 %90, i32* %93)
  %95 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %96 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %95, i32 0, i32 13
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %99 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %98, i32 0, i32 14
  store i32 %97, i32* %99, align 8
  %100 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %101 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %100, i32 0, i32 11
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %104 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %103, i32 0, i32 12
  store i32 %102, i32* %104, align 8
  %105 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %106 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %109 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %108, i32 0, i32 10
  store i32 %107, i32* %109, align 8
  br label %233

110:                                              ; preds = %16
  %111 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %112 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %115 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  store i32 %113, i32* %117, align 4
  %118 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %119 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %122 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  store i32 %120, i32* %124, align 4
  %125 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %126 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %129 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  store i32 %127, i32* %131, align 4
  %132 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %135 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @blinkm_write(%struct.i2c_client* %132, i32 %133, i32* %136)
  br label %233

138:                                              ; preds = %16
  %139 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @blinkm_write(%struct.i2c_client* %139, i32 %140, i32* null)
  br label %233

142:                                              ; preds = %16
  %143 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %144 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %147 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  store i32 %145, i32* %149, align 4
  %150 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %151 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %154 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  store i32 %152, i32* %156, align 4
  %157 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %158 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %161 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 2
  store i32 %159, i32* %163, align 4
  %164 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %165 = load i32, i32* %5, align 4
  %166 = call i32 @blinkm_write(%struct.i2c_client* %164, i32 %165, i32* null)
  %167 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %168 = load i32, i32* %5, align 4
  %169 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %170 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @blinkm_read(%struct.i2c_client* %167, i32 %168, i32* %171)
  %173 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %174 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %179 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %178, i32 0, i32 5
  store i32 %177, i32* %179, align 4
  %180 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %181 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %186 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %185, i32 0, i32 4
  store i32 %184, i32* %186, align 8
  %187 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %188 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 2
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %193 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %192, i32 0, i32 3
  store i32 %191, i32* %193, align 4
  br label %233

194:                                              ; preds = %16
  %195 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %196 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %199 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 0
  store i32 %197, i32* %201, align 4
  %202 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %203 = load i32, i32* %5, align 4
  %204 = call i32 @blinkm_write(%struct.i2c_client* %202, i32 %203, i32* null)
  %205 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %206 = load i32, i32* %5, align 4
  %207 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %208 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = call i32 @blinkm_read(%struct.i2c_client* %205, i32 %206, i32* %209)
  %211 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %212 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %217 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %216, i32 0, i32 2
  store i32 %215, i32* %217, align 8
  br label %233

218:                                              ; preds = %16, %16, %16, %16, %16, %16, %16, %16
  %219 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %220 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %219, i32 0, i32 0
  %221 = load i32, i32* %5, align 4
  %222 = call i32 @dev_err(i32* %220, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %221)
  br label %233

223:                                              ; preds = %16
  %224 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %225 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %224, i32 0, i32 0
  %226 = load i32, i32* %5, align 4
  %227 = call i32 @dev_err(i32* %225, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %226)
  %228 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %229 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %228, i32 0, i32 0
  %230 = call i32 @mutex_unlock(i32* %229)
  %231 = load i32, i32* @EINVAL, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %3, align 4
  br label %237

233:                                              ; preds = %218, %194, %142, %138, %110, %67, %18
  %234 = load %struct.blinkm_data*, %struct.blinkm_data** %6, align 8
  %235 = getelementptr inbounds %struct.blinkm_data, %struct.blinkm_data* %234, i32 0, i32 0
  %236 = call i32 @mutex_unlock(i32* %235)
  store i32 0, i32* %3, align 4
  br label %237

237:                                              ; preds = %233, %223, %13
  %238 = load i32, i32* %3, align 4
  ret i32 %238
}

declare dso_local %struct.blinkm_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @blinkm_write(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @blinkm_read(%struct.i2c_client*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
