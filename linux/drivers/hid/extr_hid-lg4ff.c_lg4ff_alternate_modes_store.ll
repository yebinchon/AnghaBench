; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_alternate_modes_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg4ff.c_lg4ff_alternate_modes_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.hid_device = type { i32 }
%struct.lg4ff_device_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64, i32 }
%struct.lg_drv_data = type { %struct.lg4ff_device_entry* }
%struct.lg4ff_compat_mode_switch = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Private driver data not found!\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Device properties not found!\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@LG4FF_MODE_MAX_IDX = common dso_local global i32 0, align 4
@lg4ff_alternate_modes = common dso_local global %struct.TYPE_4__* null, align 8
@.str.3 = private unnamed_addr constant [52 x i8] c"Requested mode \22%s\22 is not supported by the device\0A\00", align 1
@USB_DEVICE_ID_LOGITECH_WHEEL = common dso_local global i64 0, align 8
@lg4ff_no_autoswitch = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [130 x i8] c"\22%s\22 cannot be switched to \22DF-EX\22 mode. Load the \22hid_logitech\22 module with \22lg4ff_no_autoswitch=1\22 parameter set and try again\0A\00", align 1
@USB_DEVICE_ID_LOGITECH_DFP_WHEEL = common dso_local global i64 0, align 8
@USB_DEVICE_ID_LOGITECH_G25_WHEEL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [45 x i8] c"\22%s\22 cannot be switched back into \22%s\22 mode\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Invalid target product ID %X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @lg4ff_alternate_modes_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lg4ff_alternate_modes_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hid_device*, align 8
  %11 = alloca %struct.lg4ff_device_entry*, align 8
  %12 = alloca %struct.lg_drv_data*, align 8
  %13 = alloca %struct.lg4ff_compat_mode_switch*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call %struct.hid_device* @to_hid_device(%struct.device* %20)
  store %struct.hid_device* %21, %struct.hid_device** %10, align 8
  store i64 0, i64* %14, align 8
  %22 = load %struct.hid_device*, %struct.hid_device** %10, align 8
  %23 = call %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device* %22)
  store %struct.lg_drv_data* %23, %struct.lg_drv_data** %12, align 8
  %24 = load %struct.lg_drv_data*, %struct.lg_drv_data** %12, align 8
  %25 = icmp ne %struct.lg_drv_data* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %4
  %27 = load %struct.hid_device*, %struct.hid_device** %10, align 8
  %28 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %230

31:                                               ; preds = %4
  %32 = load %struct.lg_drv_data*, %struct.lg_drv_data** %12, align 8
  %33 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %32, i32 0, i32 0
  %34 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %33, align 8
  store %struct.lg4ff_device_entry* %34, %struct.lg4ff_device_entry** %11, align 8
  %35 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %11, align 8
  %36 = icmp ne %struct.lg4ff_device_entry* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load %struct.hid_device*, %struct.hid_device** %10, align 8
  %39 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i64, i64* @EINVAL, align 8
  %41 = sub i64 0, %40
  store i64 %41, i64* %5, align 8
  br label %230

42:                                               ; preds = %31
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = call i8* @kasprintf(i32 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  store i8* %45, i8** %17, align 8
  %46 = load i8*, i8** %17, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i64, i64* @ENOMEM, align 8
  %50 = sub i64 0, %49
  store i64 %50, i64* %5, align 8
  br label %230

51:                                               ; preds = %42
  %52 = load i8*, i8** %17, align 8
  %53 = call i32 @strlen(i8* %52)
  store i32 %53, i32* %15, align 4
  %54 = load i8*, i8** %17, align 8
  %55 = load i32, i32* %15, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 10
  br i1 %61, label %62, label %76

62:                                               ; preds = %51
  %63 = load i32, i32* %15, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i8*, i8** %17, align 8
  %67 = call i32 @kfree(i8* %66)
  %68 = load i64, i64* @EINVAL, align 8
  %69 = sub i64 0, %68
  store i64 %69, i64* %5, align 8
  br label %230

70:                                               ; preds = %62
  %71 = load i8*, i8** %17, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  store i8 0, i8* %75, align 1
  br label %76

76:                                               ; preds = %70, %51
  store i32 0, i32* %15, align 4
  br label %77

77:                                               ; preds = %120, %76
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* @LG4FF_MODE_MAX_IDX, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %123

81:                                               ; preds = %77
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lg4ff_alternate_modes, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %18, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lg4ff_alternate_modes, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %19, align 8
  %94 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %11, align 8
  %95 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @BIT(i32 %98)
  %100 = and i32 %97, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %81
  %103 = load i8*, i8** %19, align 8
  %104 = load i8*, i8** %17, align 8
  %105 = call i32 @strcmp(i8* %103, i8* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %118, label %107

107:                                              ; preds = %102
  %108 = load i64, i64* %18, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %107
  %111 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %11, align 8
  %112 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %14, align 8
  br label %117

115:                                              ; preds = %107
  %116 = load i64, i64* %18, align 8
  store i64 %116, i64* %14, align 8
  br label %117

117:                                              ; preds = %115, %110
  br label %123

118:                                              ; preds = %102
  br label %119

119:                                              ; preds = %118, %81
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %15, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %15, align 4
  br label %77

123:                                              ; preds = %117, %77
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* @LG4FF_MODE_MAX_IDX, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %123
  %128 = load %struct.hid_device*, %struct.hid_device** %10, align 8
  %129 = load i8*, i8** %17, align 8
  %130 = call i32 (%struct.hid_device*, i8*, i8*, ...) @hid_info(%struct.hid_device* %128, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* %129)
  %131 = load i8*, i8** %17, align 8
  %132 = call i32 @kfree(i8* %131)
  %133 = load i64, i64* @EINVAL, align 8
  %134 = sub i64 0, %133
  store i64 %134, i64* %5, align 8
  br label %230

135:                                              ; preds = %123
  %136 = load i8*, i8** %17, align 8
  %137 = call i32 @kfree(i8* %136)
  %138 = load i64, i64* %14, align 8
  %139 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %11, align 8
  %140 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %138, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %135
  %145 = load i64, i64* %9, align 8
  store i64 %145, i64* %5, align 8
  br label %230

146:                                              ; preds = %135
  %147 = load i64, i64* %14, align 8
  %148 = load i64, i64* @USB_DEVICE_ID_LOGITECH_WHEEL, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %164

150:                                              ; preds = %146
  %151 = load i32, i32* @lg4ff_no_autoswitch, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %164, label %153

153:                                              ; preds = %150
  %154 = load %struct.hid_device*, %struct.hid_device** %10, align 8
  %155 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %11, align 8
  %156 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to i8*
  %161 = call i32 (%struct.hid_device*, i8*, i8*, ...) @hid_info(%struct.hid_device* %154, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.4, i64 0, i64 0), i8* %160)
  %162 = load i64, i64* @EINVAL, align 8
  %163 = sub i64 0, %162
  store i64 %163, i64* %5, align 8
  br label %230

164:                                              ; preds = %150, %146
  %165 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %11, align 8
  %166 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @USB_DEVICE_ID_LOGITECH_DFP_WHEEL, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %178, label %171

171:                                              ; preds = %164
  %172 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %11, align 8
  %173 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @USB_DEVICE_ID_LOGITECH_G25_WHEEL, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %202

178:                                              ; preds = %171, %164
  %179 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %11, align 8
  %180 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* %14, align 8
  %184 = icmp sgt i64 %182, %183
  br i1 %184, label %185, label %202

185:                                              ; preds = %178
  %186 = load %struct.hid_device*, %struct.hid_device** %10, align 8
  %187 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %11, align 8
  %188 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = inttoptr i64 %191 to i8*
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lg4ff_alternate_modes, align 8
  %194 = load i32, i32* %15, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = call i32 (%struct.hid_device*, i8*, i8*, ...) @hid_info(%struct.hid_device* %186, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* %192, i32 %198)
  %200 = load i64, i64* @EINVAL, align 8
  %201 = sub i64 0, %200
  store i64 %201, i64* %5, align 8
  br label %230

202:                                              ; preds = %178, %171
  %203 = load %struct.lg4ff_device_entry*, %struct.lg4ff_device_entry** %11, align 8
  %204 = getelementptr inbounds %struct.lg4ff_device_entry, %struct.lg4ff_device_entry* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* %14, align 8
  %208 = call %struct.lg4ff_compat_mode_switch* @lg4ff_get_mode_switch_command(i64 %206, i64 %207)
  store %struct.lg4ff_compat_mode_switch* %208, %struct.lg4ff_compat_mode_switch** %13, align 8
  %209 = load %struct.lg4ff_compat_mode_switch*, %struct.lg4ff_compat_mode_switch** %13, align 8
  %210 = icmp ne %struct.lg4ff_compat_mode_switch* %209, null
  br i1 %210, label %217, label %211

211:                                              ; preds = %202
  %212 = load %struct.hid_device*, %struct.hid_device** %10, align 8
  %213 = load i64, i64* %14, align 8
  %214 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %212, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i64 %213)
  %215 = load i64, i64* @EINVAL, align 8
  %216 = sub i64 0, %215
  store i64 %216, i64* %5, align 8
  br label %230

217:                                              ; preds = %202
  %218 = load %struct.hid_device*, %struct.hid_device** %10, align 8
  %219 = load %struct.lg4ff_compat_mode_switch*, %struct.lg4ff_compat_mode_switch** %13, align 8
  %220 = call i32 @lg4ff_switch_compatibility_mode(%struct.hid_device* %218, %struct.lg4ff_compat_mode_switch* %219)
  store i32 %220, i32* %16, align 4
  %221 = load i32, i32* %16, align 4
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %217
  %224 = load i64, i64* %9, align 8
  br label %228

225:                                              ; preds = %217
  %226 = load i32, i32* %16, align 4
  %227 = sext i32 %226 to i64
  br label %228

228:                                              ; preds = %225, %223
  %229 = phi i64 [ %224, %223 ], [ %227, %225 ]
  store i64 %229, i64* %5, align 8
  br label %230

230:                                              ; preds = %228, %211, %185, %153, %144, %127, %65, %48, %37, %26
  %231 = load i64, i64* %5, align 8
  ret i64 %231
}

declare dso_local %struct.hid_device* @to_hid_device(%struct.device*) #1

declare dso_local %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, ...) #1

declare dso_local i8* @kasprintf(i32, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @hid_info(%struct.hid_device*, i8*, i8*, ...) #1

declare dso_local %struct.lg4ff_compat_mode_switch* @lg4ff_get_mode_switch_command(i64, i64) #1

declare dso_local i32 @lg4ff_switch_compatibility_mode(%struct.hid_device*, %struct.lg4ff_compat_mode_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
