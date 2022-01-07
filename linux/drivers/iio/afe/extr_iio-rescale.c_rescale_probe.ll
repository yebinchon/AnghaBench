; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/afe/extr_iio-rescale.c_rescale_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/afe/extr_iio-rescale.c_rescale_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.iio_dev = type { i32, i32*, i32, i32*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.device* }
%struct.iio_channel = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.rescale = type { i32, i32, %struct.iio_chan_spec_ext_info*, i32, %struct.iio_channel*, %struct.TYPE_7__* }
%struct.iio_chan_spec_ext_info = type { i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32 (%struct.device*, %struct.rescale*)* }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to get source channel\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid scaling factor.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@rescale_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@rescale_read_ext_info = common dso_local global i32 0, align 4
@rescale_write_ext_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rescale_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rescale_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_channel*, align 8
  %7 = alloca %struct.rescale*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iio_chan_spec_ext_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.iio_channel* @devm_iio_channel_get(%struct.device* %15, i32* null)
  store %struct.iio_channel* %16, %struct.iio_channel** %6, align 8
  %17 = load %struct.iio_channel*, %struct.iio_channel** %6, align 8
  %18 = call i64 @IS_ERR(%struct.iio_channel* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %1
  %21 = load %struct.iio_channel*, %struct.iio_channel** %6, align 8
  %22 = call i32 @PTR_ERR(%struct.iio_channel* %21)
  %23 = load i32, i32* @EPROBE_DEFER, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %20
  %30 = load %struct.iio_channel*, %struct.iio_channel** %6, align 8
  %31 = call i32 @PTR_ERR(%struct.iio_channel* %30)
  store i32 %31, i32* %2, align 4
  br label %211

32:                                               ; preds = %1
  %33 = load %struct.iio_channel*, %struct.iio_channel** %6, align 8
  %34 = call i32 @iio_get_channel_ext_info_count(%struct.iio_channel* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 24
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %37, %32
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 40, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %9, align 4
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %49, i32 %50)
  store %struct.iio_dev* %51, %struct.iio_dev** %5, align 8
  %52 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %53 = icmp ne %struct.iio_dev* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %44
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %211

57:                                               ; preds = %44
  %58 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %59 = call %struct.rescale* @iio_priv(%struct.iio_dev* %58)
  store %struct.rescale* %59, %struct.rescale** %7, align 8
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call %struct.TYPE_7__* @of_device_get_match_data(%struct.device* %60)
  %62 = load %struct.rescale*, %struct.rescale** %7, align 8
  %63 = getelementptr inbounds %struct.rescale, %struct.rescale* %62, i32 0, i32 5
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %63, align 8
  %64 = load %struct.rescale*, %struct.rescale** %7, align 8
  %65 = getelementptr inbounds %struct.rescale, %struct.rescale* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.rescale*, %struct.rescale** %7, align 8
  %67 = getelementptr inbounds %struct.rescale, %struct.rescale* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load %struct.rescale*, %struct.rescale** %7, align 8
  %69 = getelementptr inbounds %struct.rescale, %struct.rescale* %68, i32 0, i32 5
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32 (%struct.device*, %struct.rescale*)*, i32 (%struct.device*, %struct.rescale*)** %71, align 8
  %73 = load %struct.device*, %struct.device** %4, align 8
  %74 = load %struct.rescale*, %struct.rescale** %7, align 8
  %75 = call i32 %72(%struct.device* %73, %struct.rescale* %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %57
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %2, align 4
  br label %211

80:                                               ; preds = %57
  %81 = load %struct.rescale*, %struct.rescale** %7, align 8
  %82 = getelementptr inbounds %struct.rescale, %struct.rescale* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.rescale*, %struct.rescale** %7, align 8
  %87 = getelementptr inbounds %struct.rescale, %struct.rescale* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %85, %80
  %91 = load %struct.device*, %struct.device** %4, align 8
  %92 = call i32 @dev_err(%struct.device* %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %211

95:                                               ; preds = %85
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %98 = call i32 @platform_set_drvdata(%struct.platform_device* %96, %struct.iio_dev* %97)
  %99 = load %struct.iio_channel*, %struct.iio_channel** %6, align 8
  %100 = load %struct.rescale*, %struct.rescale** %7, align 8
  %101 = getelementptr inbounds %struct.rescale, %struct.rescale* %100, i32 0, i32 4
  store %struct.iio_channel* %99, %struct.iio_channel** %101, align 8
  %102 = load %struct.device*, %struct.device** %4, align 8
  %103 = call i32 @dev_name(%struct.device* %102)
  %104 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %105 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 8
  %106 = load %struct.device*, %struct.device** %4, align 8
  %107 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %108 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  store %struct.device* %106, %struct.device** %109, align 8
  %110 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %111 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %110, i32 0, i32 3
  store i32* @rescale_info, i32** %111, align 8
  %112 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %113 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %114 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load %struct.rescale*, %struct.rescale** %7, align 8
  %116 = getelementptr inbounds %struct.rescale, %struct.rescale* %115, i32 0, i32 3
  %117 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %118 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %117, i32 0, i32 1
  store i32* %116, i32** %118, align 8
  %119 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %120 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %119, i32 0, i32 0
  store i32 1, i32* %120, align 8
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %199

123:                                              ; preds = %95
  %124 = load %struct.device*, %struct.device** %4, align 8
  %125 = load %struct.iio_channel*, %struct.iio_channel** %6, align 8
  %126 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %125, i32 0, i32 0
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @GFP_KERNEL, align 4
  %132 = call %struct.iio_chan_spec_ext_info* @devm_kmemdup(%struct.device* %124, %struct.TYPE_8__* %129, i32 %130, i32 %131)
  %133 = load %struct.rescale*, %struct.rescale** %7, align 8
  %134 = getelementptr inbounds %struct.rescale, %struct.rescale* %133, i32 0, i32 2
  store %struct.iio_chan_spec_ext_info* %132, %struct.iio_chan_spec_ext_info** %134, align 8
  %135 = load %struct.rescale*, %struct.rescale** %7, align 8
  %136 = getelementptr inbounds %struct.rescale, %struct.rescale* %135, i32 0, i32 2
  %137 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %136, align 8
  %138 = icmp ne %struct.iio_chan_spec_ext_info* %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %123
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %2, align 4
  br label %211

142:                                              ; preds = %123
  store i32 0, i32* %10, align 4
  br label %143

143:                                              ; preds = %195, %142
  %144 = load %struct.rescale*, %struct.rescale** %7, align 8
  %145 = getelementptr inbounds %struct.rescale, %struct.rescale* %144, i32 0, i32 2
  %146 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.iio_chan_spec_ext_info, %struct.iio_chan_spec_ext_info* %146, i64 %148
  %150 = getelementptr inbounds %struct.iio_chan_spec_ext_info, %struct.iio_chan_spec_ext_info* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %198

153:                                              ; preds = %143
  %154 = load %struct.rescale*, %struct.rescale** %7, align 8
  %155 = getelementptr inbounds %struct.rescale, %struct.rescale* %154, i32 0, i32 2
  %156 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %155, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.iio_chan_spec_ext_info, %struct.iio_chan_spec_ext_info* %156, i64 %158
  store %struct.iio_chan_spec_ext_info* %159, %struct.iio_chan_spec_ext_info** %12, align 8
  %160 = load %struct.iio_channel*, %struct.iio_channel** %6, align 8
  %161 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %160, i32 0, i32 0
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %153
  %172 = load i32, i32* @rescale_read_ext_info, align 4
  %173 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %12, align 8
  %174 = getelementptr inbounds %struct.iio_chan_spec_ext_info, %struct.iio_chan_spec_ext_info* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  br label %175

175:                                              ; preds = %171, %153
  %176 = load %struct.iio_channel*, %struct.iio_channel** %6, align 8
  %177 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %176, i32 0, i32 0
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %175
  %188 = load i32, i32* @rescale_write_ext_info, align 4
  %189 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %12, align 8
  %190 = getelementptr inbounds %struct.iio_chan_spec_ext_info, %struct.iio_chan_spec_ext_info* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  br label %191

191:                                              ; preds = %187, %175
  %192 = load i32, i32* %10, align 4
  %193 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %12, align 8
  %194 = getelementptr inbounds %struct.iio_chan_spec_ext_info, %struct.iio_chan_spec_ext_info* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 8
  br label %195

195:                                              ; preds = %191
  %196 = load i32, i32* %10, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %10, align 4
  br label %143

198:                                              ; preds = %143
  br label %199

199:                                              ; preds = %198, %95
  %200 = load %struct.device*, %struct.device** %4, align 8
  %201 = load %struct.rescale*, %struct.rescale** %7, align 8
  %202 = call i32 @rescale_configure_channel(%struct.device* %200, %struct.rescale* %201)
  store i32 %202, i32* %11, align 4
  %203 = load i32, i32* %11, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %199
  %206 = load i32, i32* %11, align 4
  store i32 %206, i32* %2, align 4
  br label %211

207:                                              ; preds = %199
  %208 = load %struct.device*, %struct.device** %4, align 8
  %209 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %210 = call i32 @devm_iio_device_register(%struct.device* %208, %struct.iio_dev* %209)
  store i32 %210, i32* %2, align 4
  br label %211

211:                                              ; preds = %207, %205, %139, %90, %78, %54, %29
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local %struct.iio_channel* @devm_iio_channel_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.iio_channel*) #1

declare dso_local i32 @PTR_ERR(%struct.iio_channel*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @iio_get_channel_ext_info_count(%struct.iio_channel*) #1

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.rescale* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.TYPE_7__* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iio_dev*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local %struct.iio_chan_spec_ext_info* @devm_kmemdup(%struct.device*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @rescale_configure_channel(%struct.device*, %struct.rescale*) #1

declare dso_local i32 @devm_iio_device_register(%struct.device*, %struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
