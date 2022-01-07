; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_cfg_ts_pad_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_cfg_ts_pad_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MXL_TRUE = common dso_local global i32 0, align 4
@MXL_ENABLE = common dso_local global i32 0, align 4
@MXL_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl*, i32)* @cfg_ts_pad_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg_ts_pad_mux(%struct.mxl* %0, i32 %1) #0 {
  %3 = alloca %struct.mxl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mxl* %0, %struct.mxl** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MXL_TRUE, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %11 = load %struct.mxl*, %struct.mxl** %3, align 8
  %12 = getelementptr inbounds %struct.mxl, %struct.mxl* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 137
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = load %struct.mxl*, %struct.mxl** %3, align 8
  %19 = getelementptr inbounds %struct.mxl, %struct.mxl* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 136
  br i1 %23, label %24, label %25

24:                                               ; preds = %17, %10
  store i32 2, i32* %6, align 4
  br label %25

25:                                               ; preds = %24, %17
  br label %43

26:                                               ; preds = %2
  %27 = load %struct.mxl*, %struct.mxl** %3, align 8
  %28 = getelementptr inbounds %struct.mxl, %struct.mxl* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 130
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.mxl*, %struct.mxl** %3, align 8
  %35 = getelementptr inbounds %struct.mxl, %struct.mxl* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 129
  br i1 %39, label %40, label %41

40:                                               ; preds = %33, %26
  store i32 2, i32* %6, align 4
  br label %42

41:                                               ; preds = %33
  store i32 3, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %40
  br label %43

43:                                               ; preds = %42, %25
  %44 = load %struct.mxl*, %struct.mxl** %3, align 8
  %45 = getelementptr inbounds %struct.mxl, %struct.mxl* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %508 [
    i32 133, label %49
    i32 130, label %49
    i32 137, label %49
    i32 136, label %49
    i32 132, label %49
    i32 129, label %49
    i32 134, label %115
    i32 135, label %115
    i32 131, label %310
    i32 128, label %507
  ]

49:                                               ; preds = %43, %43, %43, %43, %43, %43
  %50 = load %struct.mxl*, %struct.mxl** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @update_by_mnemonic(%struct.mxl* %50, i32 -1879047824, i32 24, i32 3, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load %struct.mxl*, %struct.mxl** %3, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @update_by_mnemonic(%struct.mxl* %55, i32 -1879047824, i32 28, i32 3, i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load %struct.mxl*, %struct.mxl** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @update_by_mnemonic(%struct.mxl* %60, i32 -1879047820, i32 0, i32 3, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load %struct.mxl*, %struct.mxl** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @update_by_mnemonic(%struct.mxl* %65, i32 -1879047820, i32 4, i32 3, i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load %struct.mxl*, %struct.mxl** %3, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @update_by_mnemonic(%struct.mxl* %70, i32 -1879047820, i32 8, i32 3, i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load %struct.mxl*, %struct.mxl** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @update_by_mnemonic(%struct.mxl* %75, i32 -1879047820, i32 12, i32 3, i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %5, align 4
  %80 = load %struct.mxl*, %struct.mxl** %3, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @update_by_mnemonic(%struct.mxl* %80, i32 -1879047820, i32 16, i32 3, i32 %81)
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  %85 = load %struct.mxl*, %struct.mxl** %3, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @update_by_mnemonic(%struct.mxl* %85, i32 -1879047820, i32 20, i32 3, i32 %86)
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  %90 = load %struct.mxl*, %struct.mxl** %3, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @update_by_mnemonic(%struct.mxl* %90, i32 -1879047820, i32 24, i32 3, i32 %91)
  %93 = load i32, i32* %5, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %5, align 4
  %95 = load %struct.mxl*, %struct.mxl** %3, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @update_by_mnemonic(%struct.mxl* %95, i32 -1879047820, i32 28, i32 3, i32 %96)
  %98 = load i32, i32* %5, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %5, align 4
  %100 = load %struct.mxl*, %struct.mxl** %3, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @update_by_mnemonic(%struct.mxl* %100, i32 -1879047816, i32 0, i32 3, i32 %101)
  %103 = load i32, i32* %5, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %5, align 4
  %105 = load %struct.mxl*, %struct.mxl** %3, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @update_by_mnemonic(%struct.mxl* %105, i32 -1879047816, i32 4, i32 3, i32 %106)
  %108 = load i32, i32* %5, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %5, align 4
  %110 = load %struct.mxl*, %struct.mxl** %3, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @update_by_mnemonic(%struct.mxl* %110, i32 -1879047816, i32 8, i32 3, i32 %111)
  %113 = load i32, i32* %5, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %5, align 4
  br label %564

115:                                              ; preds = %43, %43
  %116 = load %struct.mxl*, %struct.mxl** %3, align 8
  %117 = call i32 @update_by_mnemonic(%struct.mxl* %116, i32 -1879047828, i32 4, i32 3, i32 1)
  %118 = load i32, i32* %5, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %5, align 4
  %120 = load %struct.mxl*, %struct.mxl** %3, align 8
  %121 = call i32 @update_by_mnemonic(%struct.mxl* %120, i32 -1879047828, i32 8, i32 3, i32 0)
  %122 = load i32, i32* %5, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %5, align 4
  %124 = load %struct.mxl*, %struct.mxl** %3, align 8
  %125 = call i32 @update_by_mnemonic(%struct.mxl* %124, i32 -1879047828, i32 12, i32 3, i32 0)
  %126 = load i32, i32* %5, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %5, align 4
  %128 = load %struct.mxl*, %struct.mxl** %3, align 8
  %129 = call i32 @update_by_mnemonic(%struct.mxl* %128, i32 -1879047828, i32 16, i32 3, i32 0)
  %130 = load i32, i32* %5, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %5, align 4
  %132 = load %struct.mxl*, %struct.mxl** %3, align 8
  %133 = call i32 @update_by_mnemonic(%struct.mxl* %132, i32 -1879047824, i32 0, i32 3, i32 0)
  %134 = load i32, i32* %5, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %5, align 4
  %136 = load %struct.mxl*, %struct.mxl** %3, align 8
  %137 = call i32 @update_by_mnemonic(%struct.mxl* %136, i32 -1879047816, i32 12, i32 3, i32 1)
  %138 = load i32, i32* %5, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %5, align 4
  %140 = load %struct.mxl*, %struct.mxl** %3, align 8
  %141 = call i32 @update_by_mnemonic(%struct.mxl* %140, i32 -1879047816, i32 16, i32 3, i32 1)
  %142 = load i32, i32* %5, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %5, align 4
  %144 = load %struct.mxl*, %struct.mxl** %3, align 8
  %145 = call i32 @update_by_mnemonic(%struct.mxl* %144, i32 -1879047816, i32 20, i32 3, i32 1)
  %146 = load i32, i32* %5, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %5, align 4
  %148 = load %struct.mxl*, %struct.mxl** %3, align 8
  %149 = call i32 @update_by_mnemonic(%struct.mxl* %148, i32 -1879047816, i32 24, i32 3, i32 1)
  %150 = load i32, i32* %5, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %5, align 4
  %152 = load %struct.mxl*, %struct.mxl** %3, align 8
  %153 = call i32 @update_by_mnemonic(%struct.mxl* %152, i32 -1879047812, i32 0, i32 3, i32 1)
  %154 = load i32, i32* %5, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %5, align 4
  %156 = load %struct.mxl*, %struct.mxl** %3, align 8
  %157 = call i32 @update_by_mnemonic(%struct.mxl* %156, i32 -1879047812, i32 4, i32 3, i32 1)
  %158 = load i32, i32* %5, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %5, align 4
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* @MXL_ENABLE, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %236

163:                                              ; preds = %115
  %164 = load %struct.mxl*, %struct.mxl** %3, align 8
  %165 = call i32 @update_by_mnemonic(%struct.mxl* %164, i32 -1879047824, i32 4, i32 3, i32 0)
  %166 = load i32, i32* %5, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %5, align 4
  %168 = load %struct.mxl*, %struct.mxl** %3, align 8
  %169 = call i32 @update_by_mnemonic(%struct.mxl* %168, i32 -1879047824, i32 8, i32 3, i32 0)
  %170 = load i32, i32* %5, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %5, align 4
  %172 = load %struct.mxl*, %struct.mxl** %3, align 8
  %173 = call i32 @update_by_mnemonic(%struct.mxl* %172, i32 -1879047824, i32 12, i32 3, i32 0)
  %174 = load i32, i32* %5, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %5, align 4
  %176 = load %struct.mxl*, %struct.mxl** %3, align 8
  %177 = call i32 @update_by_mnemonic(%struct.mxl* %176, i32 -1879047824, i32 16, i32 3, i32 0)
  %178 = load i32, i32* %5, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %5, align 4
  %180 = load %struct.mxl*, %struct.mxl** %3, align 8
  %181 = call i32 @update_by_mnemonic(%struct.mxl* %180, i32 -1879047824, i32 20, i32 3, i32 1)
  %182 = load i32, i32* %5, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %5, align 4
  %184 = load %struct.mxl*, %struct.mxl** %3, align 8
  %185 = call i32 @update_by_mnemonic(%struct.mxl* %184, i32 -1879047824, i32 24, i32 3, i32 1)
  %186 = load i32, i32* %5, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %5, align 4
  %188 = load %struct.mxl*, %struct.mxl** %3, align 8
  %189 = call i32 @update_by_mnemonic(%struct.mxl* %188, i32 -1879047824, i32 28, i32 3, i32 2)
  %190 = load i32, i32* %5, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %5, align 4
  %192 = load %struct.mxl*, %struct.mxl** %3, align 8
  %193 = call i32 @update_by_mnemonic(%struct.mxl* %192, i32 -1879047820, i32 0, i32 3, i32 2)
  %194 = load i32, i32* %5, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %5, align 4
  %196 = load %struct.mxl*, %struct.mxl** %3, align 8
  %197 = call i32 @update_by_mnemonic(%struct.mxl* %196, i32 -1879047820, i32 4, i32 3, i32 2)
  %198 = load i32, i32* %5, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %5, align 4
  %200 = load %struct.mxl*, %struct.mxl** %3, align 8
  %201 = call i32 @update_by_mnemonic(%struct.mxl* %200, i32 -1879047820, i32 8, i32 3, i32 2)
  %202 = load i32, i32* %5, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %5, align 4
  %204 = load %struct.mxl*, %struct.mxl** %3, align 8
  %205 = call i32 @update_by_mnemonic(%struct.mxl* %204, i32 -1879047820, i32 12, i32 3, i32 2)
  %206 = load i32, i32* %5, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %5, align 4
  %208 = load %struct.mxl*, %struct.mxl** %3, align 8
  %209 = call i32 @update_by_mnemonic(%struct.mxl* %208, i32 -1879047820, i32 16, i32 3, i32 2)
  %210 = load i32, i32* %5, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %5, align 4
  %212 = load %struct.mxl*, %struct.mxl** %3, align 8
  %213 = call i32 @update_by_mnemonic(%struct.mxl* %212, i32 -1879047820, i32 20, i32 3, i32 2)
  %214 = load i32, i32* %5, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %5, align 4
  %216 = load %struct.mxl*, %struct.mxl** %3, align 8
  %217 = call i32 @update_by_mnemonic(%struct.mxl* %216, i32 -1879047820, i32 24, i32 3, i32 2)
  %218 = load i32, i32* %5, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %5, align 4
  %220 = load %struct.mxl*, %struct.mxl** %3, align 8
  %221 = call i32 @update_by_mnemonic(%struct.mxl* %220, i32 -1879047820, i32 28, i32 3, i32 2)
  %222 = load i32, i32* %5, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %5, align 4
  %224 = load %struct.mxl*, %struct.mxl** %3, align 8
  %225 = call i32 @update_by_mnemonic(%struct.mxl* %224, i32 -1879047816, i32 0, i32 3, i32 2)
  %226 = load i32, i32* %5, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %5, align 4
  %228 = load %struct.mxl*, %struct.mxl** %3, align 8
  %229 = call i32 @update_by_mnemonic(%struct.mxl* %228, i32 -1879047816, i32 4, i32 3, i32 2)
  %230 = load i32, i32* %5, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %5, align 4
  %232 = load %struct.mxl*, %struct.mxl** %3, align 8
  %233 = call i32 @update_by_mnemonic(%struct.mxl* %232, i32 -1879047816, i32 8, i32 3, i32 2)
  %234 = load i32, i32* %5, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %5, align 4
  br label %309

236:                                              ; preds = %115
  %237 = load %struct.mxl*, %struct.mxl** %3, align 8
  %238 = call i32 @update_by_mnemonic(%struct.mxl* %237, i32 -1879047824, i32 4, i32 3, i32 3)
  %239 = load i32, i32* %5, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %5, align 4
  %241 = load %struct.mxl*, %struct.mxl** %3, align 8
  %242 = call i32 @update_by_mnemonic(%struct.mxl* %241, i32 -1879047824, i32 8, i32 3, i32 3)
  %243 = load i32, i32* %5, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %5, align 4
  %245 = load %struct.mxl*, %struct.mxl** %3, align 8
  %246 = call i32 @update_by_mnemonic(%struct.mxl* %245, i32 -1879047824, i32 12, i32 3, i32 3)
  %247 = load i32, i32* %5, align 4
  %248 = or i32 %247, %246
  store i32 %248, i32* %5, align 4
  %249 = load %struct.mxl*, %struct.mxl** %3, align 8
  %250 = call i32 @update_by_mnemonic(%struct.mxl* %249, i32 -1879047824, i32 16, i32 3, i32 3)
  %251 = load i32, i32* %5, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %5, align 4
  %253 = load %struct.mxl*, %struct.mxl** %3, align 8
  %254 = call i32 @update_by_mnemonic(%struct.mxl* %253, i32 -1879047824, i32 20, i32 3, i32 3)
  %255 = load i32, i32* %5, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %5, align 4
  %257 = load %struct.mxl*, %struct.mxl** %3, align 8
  %258 = call i32 @update_by_mnemonic(%struct.mxl* %257, i32 -1879047824, i32 24, i32 3, i32 3)
  %259 = load i32, i32* %5, align 4
  %260 = or i32 %259, %258
  store i32 %260, i32* %5, align 4
  %261 = load %struct.mxl*, %struct.mxl** %3, align 8
  %262 = call i32 @update_by_mnemonic(%struct.mxl* %261, i32 -1879047824, i32 28, i32 3, i32 3)
  %263 = load i32, i32* %5, align 4
  %264 = or i32 %263, %262
  store i32 %264, i32* %5, align 4
  %265 = load %struct.mxl*, %struct.mxl** %3, align 8
  %266 = call i32 @update_by_mnemonic(%struct.mxl* %265, i32 -1879047820, i32 0, i32 3, i32 3)
  %267 = load i32, i32* %5, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %5, align 4
  %269 = load %struct.mxl*, %struct.mxl** %3, align 8
  %270 = call i32 @update_by_mnemonic(%struct.mxl* %269, i32 -1879047820, i32 4, i32 3, i32 3)
  %271 = load i32, i32* %5, align 4
  %272 = or i32 %271, %270
  store i32 %272, i32* %5, align 4
  %273 = load %struct.mxl*, %struct.mxl** %3, align 8
  %274 = call i32 @update_by_mnemonic(%struct.mxl* %273, i32 -1879047820, i32 8, i32 3, i32 3)
  %275 = load i32, i32* %5, align 4
  %276 = or i32 %275, %274
  store i32 %276, i32* %5, align 4
  %277 = load %struct.mxl*, %struct.mxl** %3, align 8
  %278 = call i32 @update_by_mnemonic(%struct.mxl* %277, i32 -1879047820, i32 12, i32 3, i32 3)
  %279 = load i32, i32* %5, align 4
  %280 = or i32 %279, %278
  store i32 %280, i32* %5, align 4
  %281 = load %struct.mxl*, %struct.mxl** %3, align 8
  %282 = call i32 @update_by_mnemonic(%struct.mxl* %281, i32 -1879047820, i32 16, i32 3, i32 3)
  %283 = load i32, i32* %5, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %5, align 4
  %285 = load %struct.mxl*, %struct.mxl** %3, align 8
  %286 = call i32 @update_by_mnemonic(%struct.mxl* %285, i32 -1879047820, i32 20, i32 3, i32 1)
  %287 = load i32, i32* %5, align 4
  %288 = or i32 %287, %286
  store i32 %288, i32* %5, align 4
  %289 = load %struct.mxl*, %struct.mxl** %3, align 8
  %290 = call i32 @update_by_mnemonic(%struct.mxl* %289, i32 -1879047820, i32 24, i32 3, i32 1)
  %291 = load i32, i32* %5, align 4
  %292 = or i32 %291, %290
  store i32 %292, i32* %5, align 4
  %293 = load %struct.mxl*, %struct.mxl** %3, align 8
  %294 = call i32 @update_by_mnemonic(%struct.mxl* %293, i32 -1879047820, i32 28, i32 3, i32 1)
  %295 = load i32, i32* %5, align 4
  %296 = or i32 %295, %294
  store i32 %296, i32* %5, align 4
  %297 = load %struct.mxl*, %struct.mxl** %3, align 8
  %298 = call i32 @update_by_mnemonic(%struct.mxl* %297, i32 -1879047816, i32 0, i32 3, i32 1)
  %299 = load i32, i32* %5, align 4
  %300 = or i32 %299, %298
  store i32 %300, i32* %5, align 4
  %301 = load %struct.mxl*, %struct.mxl** %3, align 8
  %302 = call i32 @update_by_mnemonic(%struct.mxl* %301, i32 -1879047816, i32 4, i32 3, i32 1)
  %303 = load i32, i32* %5, align 4
  %304 = or i32 %303, %302
  store i32 %304, i32* %5, align 4
  %305 = load %struct.mxl*, %struct.mxl** %3, align 8
  %306 = call i32 @update_by_mnemonic(%struct.mxl* %305, i32 -1879047816, i32 8, i32 3, i32 1)
  %307 = load i32, i32* %5, align 4
  %308 = or i32 %307, %306
  store i32 %308, i32* %5, align 4
  br label %309

309:                                              ; preds = %236, %163
  br label %564

310:                                              ; preds = %43
  %311 = load i32, i32* %4, align 4
  %312 = load i32, i32* @MXL_FALSE, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %450

314:                                              ; preds = %310
  %315 = load %struct.mxl*, %struct.mxl** %3, align 8
  %316 = call i32 @update_by_mnemonic(%struct.mxl* %315, i32 -1879047828, i32 8, i32 3, i32 5)
  %317 = load i32, i32* %5, align 4
  %318 = or i32 %317, %316
  store i32 %318, i32* %5, align 4
  %319 = load %struct.mxl*, %struct.mxl** %3, align 8
  %320 = call i32 @update_by_mnemonic(%struct.mxl* %319, i32 -1879047828, i32 12, i32 3, i32 5)
  %321 = load i32, i32* %5, align 4
  %322 = or i32 %321, %320
  store i32 %322, i32* %5, align 4
  %323 = load %struct.mxl*, %struct.mxl** %3, align 8
  %324 = call i32 @update_by_mnemonic(%struct.mxl* %323, i32 -1879047828, i32 16, i32 3, i32 5)
  %325 = load i32, i32* %5, align 4
  %326 = or i32 %325, %324
  store i32 %326, i32* %5, align 4
  %327 = load %struct.mxl*, %struct.mxl** %3, align 8
  %328 = call i32 @update_by_mnemonic(%struct.mxl* %327, i32 -1879047828, i32 20, i32 3, i32 5)
  %329 = load i32, i32* %5, align 4
  %330 = or i32 %329, %328
  store i32 %330, i32* %5, align 4
  %331 = load %struct.mxl*, %struct.mxl** %3, align 8
  %332 = call i32 @update_by_mnemonic(%struct.mxl* %331, i32 -1879047828, i32 24, i32 3, i32 5)
  %333 = load i32, i32* %5, align 4
  %334 = or i32 %333, %332
  store i32 %334, i32* %5, align 4
  %335 = load %struct.mxl*, %struct.mxl** %3, align 8
  %336 = call i32 @update_by_mnemonic(%struct.mxl* %335, i32 -1879047828, i32 28, i32 3, i32 5)
  %337 = load i32, i32* %5, align 4
  %338 = or i32 %337, %336
  store i32 %338, i32* %5, align 4
  %339 = load %struct.mxl*, %struct.mxl** %3, align 8
  %340 = call i32 @update_by_mnemonic(%struct.mxl* %339, i32 -1879047824, i32 0, i32 3, i32 5)
  %341 = load i32, i32* %5, align 4
  %342 = or i32 %341, %340
  store i32 %342, i32* %5, align 4
  %343 = load %struct.mxl*, %struct.mxl** %3, align 8
  %344 = call i32 @update_by_mnemonic(%struct.mxl* %343, i32 -1879047824, i32 4, i32 3, i32 5)
  %345 = load i32, i32* %5, align 4
  %346 = or i32 %345, %344
  store i32 %346, i32* %5, align 4
  %347 = load %struct.mxl*, %struct.mxl** %3, align 8
  %348 = call i32 @update_by_mnemonic(%struct.mxl* %347, i32 -1879047824, i32 8, i32 3, i32 5)
  %349 = load i32, i32* %5, align 4
  %350 = or i32 %349, %348
  store i32 %350, i32* %5, align 4
  %351 = load %struct.mxl*, %struct.mxl** %3, align 8
  %352 = call i32 @update_by_mnemonic(%struct.mxl* %351, i32 -1879047824, i32 12, i32 3, i32 5)
  %353 = load i32, i32* %5, align 4
  %354 = or i32 %353, %352
  store i32 %354, i32* %5, align 4
  %355 = load %struct.mxl*, %struct.mxl** %3, align 8
  %356 = call i32 @update_by_mnemonic(%struct.mxl* %355, i32 -1879047824, i32 16, i32 3, i32 5)
  %357 = load i32, i32* %5, align 4
  %358 = or i32 %357, %356
  store i32 %358, i32* %5, align 4
  %359 = load %struct.mxl*, %struct.mxl** %3, align 8
  %360 = call i32 @update_by_mnemonic(%struct.mxl* %359, i32 -1879047824, i32 20, i32 3, i32 5)
  %361 = load i32, i32* %5, align 4
  %362 = or i32 %361, %360
  store i32 %362, i32* %5, align 4
  %363 = load %struct.mxl*, %struct.mxl** %3, align 8
  %364 = load i32, i32* %6, align 4
  %365 = call i32 @update_by_mnemonic(%struct.mxl* %363, i32 -1879047824, i32 24, i32 3, i32 %364)
  %366 = load i32, i32* %5, align 4
  %367 = or i32 %366, %365
  store i32 %367, i32* %5, align 4
  %368 = load %struct.mxl*, %struct.mxl** %3, align 8
  %369 = load i32, i32* %6, align 4
  %370 = call i32 @update_by_mnemonic(%struct.mxl* %368, i32 -1879047820, i32 0, i32 3, i32 %369)
  %371 = load i32, i32* %5, align 4
  %372 = or i32 %371, %370
  store i32 %372, i32* %5, align 4
  %373 = load %struct.mxl*, %struct.mxl** %3, align 8
  %374 = load i32, i32* %6, align 4
  %375 = call i32 @update_by_mnemonic(%struct.mxl* %373, i32 -1879047820, i32 4, i32 3, i32 %374)
  %376 = load i32, i32* %5, align 4
  %377 = or i32 %376, %375
  store i32 %377, i32* %5, align 4
  %378 = load %struct.mxl*, %struct.mxl** %3, align 8
  %379 = load i32, i32* %6, align 4
  %380 = call i32 @update_by_mnemonic(%struct.mxl* %378, i32 -1879047820, i32 8, i32 3, i32 %379)
  %381 = load i32, i32* %5, align 4
  %382 = or i32 %381, %380
  store i32 %382, i32* %5, align 4
  %383 = load %struct.mxl*, %struct.mxl** %3, align 8
  %384 = load i32, i32* %6, align 4
  %385 = call i32 @update_by_mnemonic(%struct.mxl* %383, i32 -1879047820, i32 12, i32 3, i32 %384)
  %386 = load i32, i32* %5, align 4
  %387 = or i32 %386, %385
  store i32 %387, i32* %5, align 4
  %388 = load %struct.mxl*, %struct.mxl** %3, align 8
  %389 = load i32, i32* %6, align 4
  %390 = call i32 @update_by_mnemonic(%struct.mxl* %388, i32 -1879047820, i32 16, i32 3, i32 %389)
  %391 = load i32, i32* %5, align 4
  %392 = or i32 %391, %390
  store i32 %392, i32* %5, align 4
  %393 = load %struct.mxl*, %struct.mxl** %3, align 8
  %394 = load i32, i32* %6, align 4
  %395 = call i32 @update_by_mnemonic(%struct.mxl* %393, i32 -1879047820, i32 20, i32 3, i32 %394)
  %396 = load i32, i32* %5, align 4
  %397 = or i32 %396, %395
  store i32 %397, i32* %5, align 4
  %398 = load %struct.mxl*, %struct.mxl** %3, align 8
  %399 = load i32, i32* %6, align 4
  %400 = call i32 @update_by_mnemonic(%struct.mxl* %398, i32 -1879047820, i32 24, i32 3, i32 %399)
  %401 = load i32, i32* %5, align 4
  %402 = or i32 %401, %400
  store i32 %402, i32* %5, align 4
  %403 = load %struct.mxl*, %struct.mxl** %3, align 8
  %404 = load i32, i32* %6, align 4
  %405 = call i32 @update_by_mnemonic(%struct.mxl* %403, i32 -1879047820, i32 28, i32 3, i32 %404)
  %406 = load i32, i32* %5, align 4
  %407 = or i32 %406, %405
  store i32 %407, i32* %5, align 4
  %408 = load %struct.mxl*, %struct.mxl** %3, align 8
  %409 = load i32, i32* %6, align 4
  %410 = call i32 @update_by_mnemonic(%struct.mxl* %408, i32 -1879047816, i32 0, i32 3, i32 %409)
  %411 = load i32, i32* %5, align 4
  %412 = or i32 %411, %410
  store i32 %412, i32* %5, align 4
  %413 = load %struct.mxl*, %struct.mxl** %3, align 8
  %414 = load i32, i32* %6, align 4
  %415 = call i32 @update_by_mnemonic(%struct.mxl* %413, i32 -1879047816, i32 4, i32 3, i32 %414)
  %416 = load i32, i32* %5, align 4
  %417 = or i32 %416, %415
  store i32 %417, i32* %5, align 4
  %418 = load %struct.mxl*, %struct.mxl** %3, align 8
  %419 = call i32 @update_by_mnemonic(%struct.mxl* %418, i32 -1879047816, i32 8, i32 3, i32 5)
  %420 = load i32, i32* %5, align 4
  %421 = or i32 %420, %419
  store i32 %421, i32* %5, align 4
  %422 = load %struct.mxl*, %struct.mxl** %3, align 8
  %423 = call i32 @update_by_mnemonic(%struct.mxl* %422, i32 -1879047816, i32 12, i32 3, i32 5)
  %424 = load i32, i32* %5, align 4
  %425 = or i32 %424, %423
  store i32 %425, i32* %5, align 4
  %426 = load %struct.mxl*, %struct.mxl** %3, align 8
  %427 = call i32 @update_by_mnemonic(%struct.mxl* %426, i32 -1879047816, i32 16, i32 3, i32 5)
  %428 = load i32, i32* %5, align 4
  %429 = or i32 %428, %427
  store i32 %429, i32* %5, align 4
  %430 = load %struct.mxl*, %struct.mxl** %3, align 8
  %431 = call i32 @update_by_mnemonic(%struct.mxl* %430, i32 -1879047816, i32 20, i32 3, i32 5)
  %432 = load i32, i32* %5, align 4
  %433 = or i32 %432, %431
  store i32 %433, i32* %5, align 4
  %434 = load %struct.mxl*, %struct.mxl** %3, align 8
  %435 = call i32 @update_by_mnemonic(%struct.mxl* %434, i32 -1879047816, i32 24, i32 3, i32 5)
  %436 = load i32, i32* %5, align 4
  %437 = or i32 %436, %435
  store i32 %437, i32* %5, align 4
  %438 = load %struct.mxl*, %struct.mxl** %3, align 8
  %439 = call i32 @update_by_mnemonic(%struct.mxl* %438, i32 -1879047816, i32 28, i32 3, i32 5)
  %440 = load i32, i32* %5, align 4
  %441 = or i32 %440, %439
  store i32 %441, i32* %5, align 4
  %442 = load %struct.mxl*, %struct.mxl** %3, align 8
  %443 = call i32 @update_by_mnemonic(%struct.mxl* %442, i32 -1879047812, i32 0, i32 3, i32 5)
  %444 = load i32, i32* %5, align 4
  %445 = or i32 %444, %443
  store i32 %445, i32* %5, align 4
  %446 = load %struct.mxl*, %struct.mxl** %3, align 8
  %447 = call i32 @update_by_mnemonic(%struct.mxl* %446, i32 -1879047812, i32 4, i32 3, i32 5)
  %448 = load i32, i32* %5, align 4
  %449 = or i32 %448, %447
  store i32 %449, i32* %5, align 4
  br label %506

450:                                              ; preds = %310
  %451 = load %struct.mxl*, %struct.mxl** %3, align 8
  %452 = load i32, i32* %6, align 4
  %453 = call i32 @update_by_mnemonic(%struct.mxl* %451, i32 -1879047824, i32 4, i32 3, i32 %452)
  %454 = load i32, i32* %5, align 4
  %455 = or i32 %454, %453
  store i32 %455, i32* %5, align 4
  %456 = load %struct.mxl*, %struct.mxl** %3, align 8
  %457 = load i32, i32* %6, align 4
  %458 = call i32 @update_by_mnemonic(%struct.mxl* %456, i32 -1879047824, i32 8, i32 3, i32 %457)
  %459 = load i32, i32* %5, align 4
  %460 = or i32 %459, %458
  store i32 %460, i32* %5, align 4
  %461 = load %struct.mxl*, %struct.mxl** %3, align 8
  %462 = load i32, i32* %6, align 4
  %463 = call i32 @update_by_mnemonic(%struct.mxl* %461, i32 -1879047824, i32 12, i32 3, i32 %462)
  %464 = load i32, i32* %5, align 4
  %465 = or i32 %464, %463
  store i32 %465, i32* %5, align 4
  %466 = load %struct.mxl*, %struct.mxl** %3, align 8
  %467 = load i32, i32* %6, align 4
  %468 = call i32 @update_by_mnemonic(%struct.mxl* %466, i32 -1879047824, i32 16, i32 3, i32 %467)
  %469 = load i32, i32* %5, align 4
  %470 = or i32 %469, %468
  store i32 %470, i32* %5, align 4
  %471 = load %struct.mxl*, %struct.mxl** %3, align 8
  %472 = load i32, i32* %6, align 4
  %473 = call i32 @update_by_mnemonic(%struct.mxl* %471, i32 -1879047824, i32 20, i32 3, i32 %472)
  %474 = load i32, i32* %5, align 4
  %475 = or i32 %474, %473
  store i32 %475, i32* %5, align 4
  %476 = load %struct.mxl*, %struct.mxl** %3, align 8
  %477 = load i32, i32* %6, align 4
  %478 = call i32 @update_by_mnemonic(%struct.mxl* %476, i32 -1879047824, i32 24, i32 3, i32 %477)
  %479 = load i32, i32* %5, align 4
  %480 = or i32 %479, %478
  store i32 %480, i32* %5, align 4
  %481 = load %struct.mxl*, %struct.mxl** %3, align 8
  %482 = load i32, i32* %6, align 4
  %483 = call i32 @update_by_mnemonic(%struct.mxl* %481, i32 -1879047824, i32 28, i32 3, i32 %482)
  %484 = load i32, i32* %5, align 4
  %485 = or i32 %484, %483
  store i32 %485, i32* %5, align 4
  %486 = load %struct.mxl*, %struct.mxl** %3, align 8
  %487 = load i32, i32* %6, align 4
  %488 = call i32 @update_by_mnemonic(%struct.mxl* %486, i32 -1879047820, i32 0, i32 3, i32 %487)
  %489 = load i32, i32* %5, align 4
  %490 = or i32 %489, %488
  store i32 %490, i32* %5, align 4
  %491 = load %struct.mxl*, %struct.mxl** %3, align 8
  %492 = load i32, i32* %6, align 4
  %493 = call i32 @update_by_mnemonic(%struct.mxl* %491, i32 -1879047820, i32 4, i32 3, i32 %492)
  %494 = load i32, i32* %5, align 4
  %495 = or i32 %494, %493
  store i32 %495, i32* %5, align 4
  %496 = load %struct.mxl*, %struct.mxl** %3, align 8
  %497 = load i32, i32* %6, align 4
  %498 = call i32 @update_by_mnemonic(%struct.mxl* %496, i32 -1879047820, i32 8, i32 3, i32 %497)
  %499 = load i32, i32* %5, align 4
  %500 = or i32 %499, %498
  store i32 %500, i32* %5, align 4
  %501 = load %struct.mxl*, %struct.mxl** %3, align 8
  %502 = load i32, i32* %6, align 4
  %503 = call i32 @update_by_mnemonic(%struct.mxl* %501, i32 -1879047820, i32 12, i32 3, i32 %502)
  %504 = load i32, i32* %5, align 4
  %505 = or i32 %504, %503
  store i32 %505, i32* %5, align 4
  br label %506

506:                                              ; preds = %450, %314
  br label %564

507:                                              ; preds = %43
  br label %508

508:                                              ; preds = %43, %507
  %509 = load %struct.mxl*, %struct.mxl** %3, align 8
  %510 = load i32, i32* %6, align 4
  %511 = call i32 @update_by_mnemonic(%struct.mxl* %509, i32 -1879047824, i32 4, i32 3, i32 %510)
  %512 = load i32, i32* %5, align 4
  %513 = or i32 %512, %511
  store i32 %513, i32* %5, align 4
  %514 = load %struct.mxl*, %struct.mxl** %3, align 8
  %515 = load i32, i32* %6, align 4
  %516 = call i32 @update_by_mnemonic(%struct.mxl* %514, i32 -1879047824, i32 8, i32 3, i32 %515)
  %517 = load i32, i32* %5, align 4
  %518 = or i32 %517, %516
  store i32 %518, i32* %5, align 4
  %519 = load %struct.mxl*, %struct.mxl** %3, align 8
  %520 = load i32, i32* %6, align 4
  %521 = call i32 @update_by_mnemonic(%struct.mxl* %519, i32 -1879047824, i32 12, i32 3, i32 %520)
  %522 = load i32, i32* %5, align 4
  %523 = or i32 %522, %521
  store i32 %523, i32* %5, align 4
  %524 = load %struct.mxl*, %struct.mxl** %3, align 8
  %525 = load i32, i32* %6, align 4
  %526 = call i32 @update_by_mnemonic(%struct.mxl* %524, i32 -1879047824, i32 16, i32 3, i32 %525)
  %527 = load i32, i32* %5, align 4
  %528 = or i32 %527, %526
  store i32 %528, i32* %5, align 4
  %529 = load %struct.mxl*, %struct.mxl** %3, align 8
  %530 = load i32, i32* %6, align 4
  %531 = call i32 @update_by_mnemonic(%struct.mxl* %529, i32 -1879047824, i32 20, i32 3, i32 %530)
  %532 = load i32, i32* %5, align 4
  %533 = or i32 %532, %531
  store i32 %533, i32* %5, align 4
  %534 = load %struct.mxl*, %struct.mxl** %3, align 8
  %535 = load i32, i32* %6, align 4
  %536 = call i32 @update_by_mnemonic(%struct.mxl* %534, i32 -1879047824, i32 24, i32 3, i32 %535)
  %537 = load i32, i32* %5, align 4
  %538 = or i32 %537, %536
  store i32 %538, i32* %5, align 4
  %539 = load %struct.mxl*, %struct.mxl** %3, align 8
  %540 = load i32, i32* %6, align 4
  %541 = call i32 @update_by_mnemonic(%struct.mxl* %539, i32 -1879047824, i32 28, i32 3, i32 %540)
  %542 = load i32, i32* %5, align 4
  %543 = or i32 %542, %541
  store i32 %543, i32* %5, align 4
  %544 = load %struct.mxl*, %struct.mxl** %3, align 8
  %545 = load i32, i32* %6, align 4
  %546 = call i32 @update_by_mnemonic(%struct.mxl* %544, i32 -1879047820, i32 0, i32 3, i32 %545)
  %547 = load i32, i32* %5, align 4
  %548 = or i32 %547, %546
  store i32 %548, i32* %5, align 4
  %549 = load %struct.mxl*, %struct.mxl** %3, align 8
  %550 = load i32, i32* %6, align 4
  %551 = call i32 @update_by_mnemonic(%struct.mxl* %549, i32 -1879047820, i32 4, i32 3, i32 %550)
  %552 = load i32, i32* %5, align 4
  %553 = or i32 %552, %551
  store i32 %553, i32* %5, align 4
  %554 = load %struct.mxl*, %struct.mxl** %3, align 8
  %555 = load i32, i32* %6, align 4
  %556 = call i32 @update_by_mnemonic(%struct.mxl* %554, i32 -1879047820, i32 8, i32 3, i32 %555)
  %557 = load i32, i32* %5, align 4
  %558 = or i32 %557, %556
  store i32 %558, i32* %5, align 4
  %559 = load %struct.mxl*, %struct.mxl** %3, align 8
  %560 = load i32, i32* %6, align 4
  %561 = call i32 @update_by_mnemonic(%struct.mxl* %559, i32 -1879047820, i32 12, i32 3, i32 %560)
  %562 = load i32, i32* %5, align 4
  %563 = or i32 %562, %561
  store i32 %563, i32* %5, align 4
  br label %564

564:                                              ; preds = %508, %506, %309, %49
  %565 = load i32, i32* %5, align 4
  ret i32 %565
}

declare dso_local i32 @update_by_mnemonic(%struct.mxl*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
