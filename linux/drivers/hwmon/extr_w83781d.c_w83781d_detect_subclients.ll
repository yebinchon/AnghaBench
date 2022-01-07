; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83781d.c_w83781d_detect_subclients.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83781d.c_w83781d_detect_subclients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.w83781d_data = type { i32, i32* }

@force_subclients = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [49 x i8] c"Invalid subclient address %d; must be 0x48-0x4f\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@W83781D_REG_I2C_SUBADDR = common dso_local global i32 0, align 4
@w83783s = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Duplicate addresses 0x%x for subclients.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Subclient %d registration at address 0x%x failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @w83781d_detect_subclients to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83781d_detect_subclients(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i16], align 2
  %10 = alloca %struct.i2c_adapter*, align 8
  %11 = alloca %struct.w83781d_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 2
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %18, align 8
  store %struct.i2c_adapter* %19, %struct.i2c_adapter** %10, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %21 = call %struct.w83781d_data* @i2c_get_clientdata(%struct.i2c_client* %20)
  store %struct.w83781d_data* %21, %struct.w83781d_data** %11, align 8
  %22 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %23 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %25 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %26 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32*, i32** @force_subclients, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %90

32:                                               ; preds = %1
  %33 = load i32*, i32** @force_subclients, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %90

38:                                               ; preds = %32
  store i32 2, i32* %4, align 4
  br label %39

39:                                               ; preds = %68, %38
  %40 = load i32, i32* %4, align 4
  %41 = icmp sle i32 %40, 3
  br i1 %41, label %42, label %71

42:                                               ; preds = %39
  %43 = load i32*, i32** @force_subclients, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 72
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = load i32*, i32** @force_subclients, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %54, 79
  br i1 %55, label %56, label %67

56:                                               ; preds = %49, %42
  %57 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 1
  %59 = load i32*, i32** @force_subclients, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %58, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %208

67:                                               ; preds = %49
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %39

71:                                               ; preds = %39
  %72 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %73 = load i32, i32* @W83781D_REG_I2C_SUBADDR, align 4
  %74 = load i32*, i32** @force_subclients, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 7
  %78 = load i32*, i32** @force_subclients, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 7
  %82 = shl i32 %81, 4
  %83 = or i32 %77, %82
  %84 = call i32 @w83781d_write_value(%struct.w83781d_data* %72, i32 %73, i32 %83)
  %85 = load i32*, i32** @force_subclients, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %86, align 4
  %88 = trunc i32 %87 to i16
  %89 = getelementptr inbounds [2 x i16], [2 x i16]* %9, i64 0, i64 0
  store i16 %88, i16* %89, align 2
  br label %99

90:                                               ; preds = %32, %1
  %91 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %92 = load i32, i32* @W83781D_REG_I2C_SUBADDR, align 4
  %93 = call i32 @w83781d_read_value(%struct.w83781d_data* %91, i32 %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = and i32 %94, 7
  %96 = add nsw i32 72, %95
  %97 = trunc i32 %96 to i16
  %98 = getelementptr inbounds [2 x i16], [2 x i16]* %9, i64 0, i64 0
  store i16 %97, i16* %98, align 2
  br label %99

99:                                               ; preds = %90, %71
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @w83783s, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %146

103:                                              ; preds = %99
  store i32 2, i32* %13, align 4
  %104 = load i32*, i32** @force_subclients, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %103
  %110 = load i32*, i32** @force_subclients, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load i32*, i32** @force_subclients, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  %118 = load i32, i32* %117, align 4
  %119 = trunc i32 %118 to i16
  %120 = getelementptr inbounds [2 x i16], [2 x i16]* %9, i64 0, i64 1
  store i16 %119, i16* %120, align 2
  br label %128

121:                                              ; preds = %109, %103
  %122 = load i32, i32* %5, align 4
  %123 = ashr i32 %122, 4
  %124 = and i32 %123, 7
  %125 = add nsw i32 72, %124
  %126 = trunc i32 %125 to i16
  %127 = getelementptr inbounds [2 x i16], [2 x i16]* %9, i64 0, i64 1
  store i16 %126, i16* %127, align 2
  br label %128

128:                                              ; preds = %121, %115
  %129 = getelementptr inbounds [2 x i16], [2 x i16]* %9, i64 0, i64 0
  %130 = load i16, i16* %129, align 2
  %131 = zext i16 %130 to i32
  %132 = getelementptr inbounds [2 x i16], [2 x i16]* %9, i64 0, i64 1
  %133 = load i16, i16* %132, align 2
  %134 = zext i16 %133 to i32
  %135 = icmp eq i32 %131, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %128
  %137 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %138 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %137, i32 0, i32 1
  %139 = getelementptr inbounds [2 x i16], [2 x i16]* %9, i64 0, i64 0
  %140 = load i16, i16* %139, align 2
  %141 = zext i16 %140 to i32
  %142 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %138, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @EBUSY, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %7, align 4
  br label %207

145:                                              ; preds = %128
  br label %146

146:                                              ; preds = %145, %99
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %196, %146
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* %13, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %199

151:                                              ; preds = %147
  %152 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %153 = load i32, i32* %4, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [2 x i16], [2 x i16]* %9, i64 0, i64 %154
  %156 = load i16, i16* %155, align 2
  %157 = call i32 @i2c_new_dummy_device(%struct.i2c_adapter* %152, i16 zeroext %156)
  %158 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %159 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %157, i32* %163, align 4
  %164 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %165 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %4, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @IS_ERR(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %195

173:                                              ; preds = %151
  %174 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %175 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %174, i32 0, i32 1
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* %4, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [2 x i16], [2 x i16]* %9, i64 0, i64 %178
  %180 = load i16, i16* %179, align 2
  %181 = zext i16 %180 to i32
  %182 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %175, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %176, i32 %181)
  %183 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %184 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %4, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @PTR_ERR(i32 %189)
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %4, align 4
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %193, label %194

193:                                              ; preds = %173
  br label %200

194:                                              ; preds = %173
  br label %207

195:                                              ; preds = %151
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %4, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %4, align 4
  br label %147

199:                                              ; preds = %147
  store i32 0, i32* %2, align 4
  br label %210

200:                                              ; preds = %193
  %201 = load %struct.w83781d_data*, %struct.w83781d_data** %11, align 8
  %202 = getelementptr inbounds %struct.w83781d_data, %struct.w83781d_data* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @i2c_unregister_device(i32 %205)
  br label %207

207:                                              ; preds = %200, %194, %136
  br label %208

208:                                              ; preds = %207, %56
  %209 = load i32, i32* %7, align 4
  store i32 %209, i32* %2, align 4
  br label %210

210:                                              ; preds = %208, %199
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local %struct.w83781d_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_adapter_id(%struct.i2c_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @w83781d_write_value(%struct.w83781d_data*, i32, i32) #1

declare dso_local i32 @w83781d_read_value(%struct.w83781d_data*, i32) #1

declare dso_local i32 @i2c_new_dummy_device(%struct.i2c_adapter*, i16 zeroext) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @i2c_unregister_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
