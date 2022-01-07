; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_do_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_do_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv64xxx_i2c_data = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i64, i32, %struct.TYPE_5__, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32* }

@MV64XXX_I2C_REG_CONTROL_INTEN = common dso_local global i32 0, align 4
@MV64XXX_I2C_REG_CONTROL_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"mv64xxx_i2c_do_action: Invalid action: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv64xxx_i2c_data*)* @mv64xxx_i2c_do_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv64xxx_i2c_do_action(%struct.mv64xxx_i2c_data* %0) #0 {
  %2 = alloca %struct.mv64xxx_i2c_data*, align 8
  store %struct.mv64xxx_i2c_data* %0, %struct.mv64xxx_i2c_data** %2, align 8
  %3 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %4 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %223 [
    i32 129, label %6
    i32 136, label %37
    i32 132, label %50
    i32 131, label %75
    i32 130, label %100
    i32 134, label %134
    i32 133, label %168
    i32 135, label %222
    i32 128, label %235
  ]

6:                                                ; preds = %1
  %7 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %8 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %14 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %13, i32 0, i32 15
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %18 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %22 = call i32 @mv64xxx_i2c_send_start(%struct.mv64xxx_i2c_data* %21)
  %23 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %24 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %23, i32 0, i32 12
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = call i32 @udelay(i32 5)
  br label %29

29:                                               ; preds = %27, %6
  %30 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %31 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 1
  %34 = zext i1 %33 to i32
  %35 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %36 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  br label %261

37:                                               ; preds = %1
  %38 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %39 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %42 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %41, i32 0, i32 9
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %45 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %44, i32 0, i32 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %43, %47
  %49 = call i32 @writel(i32 %40, i64 %48)
  br label %261

50:                                               ; preds = %1
  %51 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %52 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %55 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %54, i32 0, i32 9
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %58 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %57, i32 0, i32 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %56, %60
  %62 = call i32 @writel(i32 %53, i64 %61)
  %63 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %64 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %67 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %66, i32 0, i32 9
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %70 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %69, i32 0, i32 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %68, %72
  %74 = call i32 @writel(i32 %65, i64 %73)
  br label %261

75:                                               ; preds = %1
  %76 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %77 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %80 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %79, i32 0, i32 9
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %83 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %82, i32 0, i32 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %81, %85
  %87 = call i32 @writel(i32 %78, i64 %86)
  %88 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %89 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %92 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %91, i32 0, i32 9
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %95 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %94, i32 0, i32 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %93, %97
  %99 = call i32 @writel(i32 %90, i64 %98)
  br label %261

100:                                              ; preds = %1
  %101 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %102 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %101, i32 0, i32 14
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %107 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %106, i32 0, i32 13
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i32, i32* %105, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %114 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %113, i32 0, i32 9
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %117 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %116, i32 0, i32 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %115, %119
  %121 = call i32 @writel(i32 %112, i64 %120)
  %122 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %123 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %126 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %125, i32 0, i32 9
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %129 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %128, i32 0, i32 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %127, %131
  %133 = call i32 @writel(i32 %124, i64 %132)
  br label %261

134:                                              ; preds = %1
  %135 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %136 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %135, i32 0, i32 9
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %139 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %138, i32 0, i32 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %137, %141
  %143 = call i8* @readl(i64 %142)
  %144 = ptrtoint i8* %143 to i32
  %145 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %146 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %145, i32 0, i32 14
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %151 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %150, i32 0, i32 13
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = sext i32 %152 to i64
  %155 = getelementptr inbounds i32, i32* %149, i64 %154
  store i32 %144, i32* %155, align 4
  %156 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %157 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %160 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %159, i32 0, i32 9
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %163 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %162, i32 0, i32 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %161, %165
  %167 = call i32 @writel(i32 %158, i64 %166)
  br label %261

168:                                              ; preds = %1
  %169 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %170 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %169, i32 0, i32 9
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %173 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %172, i32 0, i32 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %171, %175
  %177 = call i8* @readl(i64 %176)
  %178 = ptrtoint i8* %177 to i32
  %179 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %180 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %179, i32 0, i32 14
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %185 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %184, i32 0, i32 13
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 4
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i32, i32* %183, i64 %188
  store i32 %178, i32* %189, align 4
  %190 = load i32, i32* @MV64XXX_I2C_REG_CONTROL_INTEN, align 4
  %191 = xor i32 %190, -1
  %192 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %193 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, %191
  store i32 %195, i32* %193, align 4
  %196 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %197 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @MV64XXX_I2C_REG_CONTROL_STOP, align 4
  %200 = or i32 %198, %199
  %201 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %202 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %201, i32 0, i32 9
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %205 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %204, i32 0, i32 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = add nsw i64 %203, %207
  %209 = call i32 @writel(i32 %200, i64 %208)
  %210 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %211 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %210, i32 0, i32 7
  store i32 0, i32* %211, align 4
  %212 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %213 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %212, i32 0, i32 12
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %168
  %217 = call i32 @udelay(i32 5)
  br label %218

218:                                              ; preds = %216, %168
  %219 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %220 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %219, i32 0, i32 6
  %221 = call i32 @wake_up(i32* %220)
  br label %261

222:                                              ; preds = %1
  br label %223

223:                                              ; preds = %1, %222
  %224 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %225 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %224, i32 0, i32 11
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  %227 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %228 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @dev_err(i32* %226, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %229)
  %231 = load i32, i32* @EIO, align 4
  %232 = sub nsw i32 0, %231
  %233 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %234 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %233, i32 0, i32 10
  store i32 %232, i32* %234, align 8
  br label %235

235:                                              ; preds = %1, %223
  %236 = load i32, i32* @MV64XXX_I2C_REG_CONTROL_INTEN, align 4
  %237 = xor i32 %236, -1
  %238 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %239 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = and i32 %240, %237
  store i32 %241, i32* %239, align 4
  %242 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %243 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @MV64XXX_I2C_REG_CONTROL_STOP, align 4
  %246 = or i32 %244, %245
  %247 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %248 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %247, i32 0, i32 9
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %251 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %250, i32 0, i32 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = add nsw i64 %249, %253
  %255 = call i32 @writel(i32 %246, i64 %254)
  %256 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %257 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %256, i32 0, i32 7
  store i32 0, i32* %257, align 4
  %258 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %2, align 8
  %259 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %258, i32 0, i32 6
  %260 = call i32 @wake_up(i32* %259)
  br label %261

261:                                              ; preds = %235, %218, %134, %100, %75, %50, %37, %29
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mv64xxx_i2c_send_start(%struct.mv64xxx_i2c_data*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i8* @readl(i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
