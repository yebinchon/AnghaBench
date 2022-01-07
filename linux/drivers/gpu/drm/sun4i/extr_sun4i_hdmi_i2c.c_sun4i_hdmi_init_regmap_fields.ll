; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_i2c.c_sun4i_hdmi_init_regmap_fields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_i2c.c_sun4i_hdmi_init_regmap_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_hdmi = type { i8*, %struct.TYPE_2__*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun4i_hdmi*)* @sun4i_hdmi_init_regmap_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_hdmi_init_regmap_fields(%struct.sun4i_hdmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sun4i_hdmi*, align 8
  store %struct.sun4i_hdmi* %0, %struct.sun4i_hdmi** %3, align 8
  %4 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %5 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %8 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %11 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 13
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @devm_regmap_field_alloc(i32 %6, i32 %9, i32 %14)
  %16 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %17 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %16, i32 0, i32 16
  store i8* %15, i8** %17, align 8
  %18 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %19 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %18, i32 0, i32 16
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @IS_ERR(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %25 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %24, i32 0, i32 16
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @PTR_ERR(i8* %26)
  store i32 %27, i32* %2, align 4
  br label %354

28:                                               ; preds = %1
  %29 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %30 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %33 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %36 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 12
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @devm_regmap_field_alloc(i32 %31, i32 %34, i32 %39)
  %41 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %42 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %41, i32 0, i32 15
  store i8* %40, i8** %42, align 8
  %43 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %44 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %43, i32 0, i32 15
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @IS_ERR(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %28
  %49 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %50 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %49, i32 0, i32 15
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @PTR_ERR(i8* %51)
  store i32 %52, i32* %2, align 4
  br label %354

53:                                               ; preds = %28
  %54 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %55 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %58 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %61 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 11
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @devm_regmap_field_alloc(i32 %56, i32 %59, i32 %64)
  %66 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %67 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %66, i32 0, i32 14
  store i8* %65, i8** %67, align 8
  %68 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %69 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %68, i32 0, i32 14
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @IS_ERR(i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %53
  %74 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %75 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %74, i32 0, i32 14
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @PTR_ERR(i8* %76)
  store i32 %77, i32* %2, align 4
  br label %354

78:                                               ; preds = %53
  %79 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %80 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %83 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %86 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 10
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @devm_regmap_field_alloc(i32 %81, i32 %84, i32 %89)
  %91 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %92 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %91, i32 0, i32 13
  store i8* %90, i8** %92, align 8
  %93 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %94 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %93, i32 0, i32 13
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @IS_ERR(i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %78
  %99 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %100 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %99, i32 0, i32 13
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @PTR_ERR(i8* %101)
  store i32 %102, i32* %2, align 4
  br label %354

103:                                              ; preds = %78
  %104 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %105 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %108 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %111 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 9
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @devm_regmap_field_alloc(i32 %106, i32 %109, i32 %114)
  %116 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %117 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %116, i32 0, i32 12
  store i8* %115, i8** %117, align 8
  %118 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %119 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %118, i32 0, i32 12
  %120 = load i8*, i8** %119, align 8
  %121 = call i64 @IS_ERR(i8* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %103
  %124 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %125 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %124, i32 0, i32 12
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @PTR_ERR(i8* %126)
  store i32 %127, i32* %2, align 4
  br label %354

128:                                              ; preds = %103
  %129 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %130 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %133 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %136 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %135, i32 0, i32 1
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 4
  %140 = call i8* @devm_regmap_field_alloc(i32 %131, i32 %134, i32 %139)
  %141 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %142 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %141, i32 0, i32 11
  store i8* %140, i8** %142, align 8
  %143 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %144 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %143, i32 0, i32 11
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @IS_ERR(i8* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %128
  %149 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %150 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %149, i32 0, i32 11
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @PTR_ERR(i8* %151)
  store i32 %152, i32* %2, align 4
  br label %354

153:                                              ; preds = %128
  %154 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %155 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %158 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %161 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %160, i32 0, i32 1
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 4
  %165 = call i8* @devm_regmap_field_alloc(i32 %156, i32 %159, i32 %164)
  %166 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %167 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %166, i32 0, i32 10
  store i8* %165, i8** %167, align 8
  %168 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %169 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %168, i32 0, i32 10
  %170 = load i8*, i8** %169, align 8
  %171 = call i64 @IS_ERR(i8* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %153
  %174 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %175 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %174, i32 0, i32 10
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @PTR_ERR(i8* %176)
  store i32 %177, i32* %2, align 4
  br label %354

178:                                              ; preds = %153
  %179 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %180 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %183 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %186 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %185, i32 0, i32 1
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 4
  %190 = call i8* @devm_regmap_field_alloc(i32 %181, i32 %184, i32 %189)
  %191 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %192 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %191, i32 0, i32 9
  store i8* %190, i8** %192, align 8
  %193 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %194 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %193, i32 0, i32 9
  %195 = load i8*, i8** %194, align 8
  %196 = call i64 @IS_ERR(i8* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %178
  %199 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %200 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %199, i32 0, i32 9
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @PTR_ERR(i8* %201)
  store i32 %202, i32* %2, align 4
  br label %354

203:                                              ; preds = %178
  %204 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %205 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %208 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %211 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %210, i32 0, i32 1
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 4
  %215 = call i8* @devm_regmap_field_alloc(i32 %206, i32 %209, i32 %214)
  %216 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %217 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %216, i32 0, i32 8
  store i8* %215, i8** %217, align 8
  %218 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %219 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %218, i32 0, i32 8
  %220 = load i8*, i8** %219, align 8
  %221 = call i64 @IS_ERR(i8* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %203
  %224 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %225 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %224, i32 0, i32 8
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @PTR_ERR(i8* %226)
  store i32 %227, i32* %2, align 4
  br label %354

228:                                              ; preds = %203
  %229 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %230 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %233 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %236 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %235, i32 0, i32 1
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 4
  %240 = call i8* @devm_regmap_field_alloc(i32 %231, i32 %234, i32 %239)
  %241 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %242 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %241, i32 0, i32 7
  store i8* %240, i8** %242, align 8
  %243 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %244 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %243, i32 0, i32 7
  %245 = load i8*, i8** %244, align 8
  %246 = call i64 @IS_ERR(i8* %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %228
  %249 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %250 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %249, i32 0, i32 7
  %251 = load i8*, i8** %250, align 8
  %252 = call i32 @PTR_ERR(i8* %251)
  store i32 %252, i32* %2, align 4
  br label %354

253:                                              ; preds = %228
  %254 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %255 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %258 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %261 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %260, i32 0, i32 1
  %262 = load %struct.TYPE_2__*, %struct.TYPE_2__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = call i8* @devm_regmap_field_alloc(i32 %256, i32 %259, i32 %264)
  %266 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %267 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %266, i32 0, i32 6
  store i8* %265, i8** %267, align 8
  %268 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %269 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %268, i32 0, i32 6
  %270 = load i8*, i8** %269, align 8
  %271 = call i64 @IS_ERR(i8* %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %253
  %274 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %275 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %274, i32 0, i32 6
  %276 = load i8*, i8** %275, align 8
  %277 = call i32 @PTR_ERR(i8* %276)
  store i32 %277, i32* %2, align 4
  br label %354

278:                                              ; preds = %253
  %279 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %280 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %283 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %286 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %285, i32 0, i32 1
  %287 = load %struct.TYPE_2__*, %struct.TYPE_2__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = call i8* @devm_regmap_field_alloc(i32 %281, i32 %284, i32 %289)
  %291 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %292 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %291, i32 0, i32 5
  store i8* %290, i8** %292, align 8
  %293 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %294 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %293, i32 0, i32 5
  %295 = load i8*, i8** %294, align 8
  %296 = call i64 @IS_ERR(i8* %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %303

298:                                              ; preds = %278
  %299 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %300 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %299, i32 0, i32 5
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 @PTR_ERR(i8* %301)
  store i32 %302, i32* %2, align 4
  br label %354

303:                                              ; preds = %278
  %304 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %305 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %308 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %311 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %310, i32 0, i32 1
  %312 = load %struct.TYPE_2__*, %struct.TYPE_2__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = call i8* @devm_regmap_field_alloc(i32 %306, i32 %309, i32 %314)
  %316 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %317 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %316, i32 0, i32 4
  store i8* %315, i8** %317, align 8
  %318 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %319 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %318, i32 0, i32 4
  %320 = load i8*, i8** %319, align 8
  %321 = call i64 @IS_ERR(i8* %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %328

323:                                              ; preds = %303
  %324 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %325 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %324, i32 0, i32 4
  %326 = load i8*, i8** %325, align 8
  %327 = call i32 @PTR_ERR(i8* %326)
  store i32 %327, i32* %2, align 4
  br label %354

328:                                              ; preds = %303
  %329 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %330 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %333 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %336 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %335, i32 0, i32 1
  %337 = load %struct.TYPE_2__*, %struct.TYPE_2__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = call i8* @devm_regmap_field_alloc(i32 %331, i32 %334, i32 %339)
  %341 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %342 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %341, i32 0, i32 0
  store i8* %340, i8** %342, align 8
  %343 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %344 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %343, i32 0, i32 0
  %345 = load i8*, i8** %344, align 8
  %346 = call i64 @IS_ERR(i8* %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %353

348:                                              ; preds = %328
  %349 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %3, align 8
  %350 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %349, i32 0, i32 0
  %351 = load i8*, i8** %350, align 8
  %352 = call i32 @PTR_ERR(i8* %351)
  store i32 %352, i32* %2, align 4
  br label %354

353:                                              ; preds = %328
  store i32 0, i32* %2, align 4
  br label %354

354:                                              ; preds = %353, %348, %323, %298, %273, %248, %223, %198, %173, %148, %123, %98, %73, %48, %23
  %355 = load i32, i32* %2, align 4
  ret i32 %355
}

declare dso_local i8* @devm_regmap_field_alloc(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
