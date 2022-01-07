; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-core.c_iio_device_add_channel_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-core.c_iio_device_add_channel_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, i32 }
%struct.iio_chan_spec = type { i64, %struct.iio_chan_spec_ext_info*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iio_chan_spec_ext_info = type { i32, i64, i64, i64 }

@IIO_SEPARATE = common dso_local global i32 0, align 4
@IIO_SHARED_BY_TYPE = common dso_local global i32 0, align 4
@IIO_SHARED_BY_DIR = common dso_local global i32 0, align 4
@IIO_SHARED_BY_ALL = common dso_local global i32 0, align 4
@iio_read_channel_ext_info = common dso_local global i32 0, align 4
@iio_write_channel_ext_info = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*)* @iio_device_add_channel_sysfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_device_add_channel_sysfs(%struct.iio_dev* %0, %struct.iio_chan_spec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.iio_chan_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iio_chan_spec_ext_info*, align 8
  %9 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %11 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %193

15:                                               ; preds = %2
  %16 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %18 = load i32, i32* @IIO_SEPARATE, align 4
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %20 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %19, i32 0, i32 9
  %21 = call i32 @iio_device_add_info_mask_type(%struct.iio_dev* %16, %struct.iio_chan_spec* %17, i32 %18, i32* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %193

26:                                               ; preds = %15
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %31 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %32 = load i32, i32* @IIO_SEPARATE, align 4
  %33 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %34 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %33, i32 0, i32 8
  %35 = call i32 @iio_device_add_info_mask_type_avail(%struct.iio_dev* %30, %struct.iio_chan_spec* %31, i32 %32, i32* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %193

40:                                               ; preds = %26
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %45 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %46 = load i32, i32* @IIO_SHARED_BY_TYPE, align 4
  %47 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %48 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %47, i32 0, i32 7
  %49 = call i32 @iio_device_add_info_mask_type(%struct.iio_dev* %44, %struct.iio_chan_spec* %45, i32 %46, i32* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %193

54:                                               ; preds = %40
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %59 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %60 = load i32, i32* @IIO_SHARED_BY_TYPE, align 4
  %61 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %62 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %61, i32 0, i32 6
  %63 = call i32 @iio_device_add_info_mask_type_avail(%struct.iio_dev* %58, %struct.iio_chan_spec* %59, i32 %60, i32* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %193

68:                                               ; preds = %54
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %73 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %74 = load i32, i32* @IIO_SHARED_BY_DIR, align 4
  %75 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %76 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %75, i32 0, i32 5
  %77 = call i32 @iio_device_add_info_mask_type(%struct.iio_dev* %72, %struct.iio_chan_spec* %73, i32 %74, i32* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %68
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %3, align 4
  br label %193

82:                                               ; preds = %68
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %7, align 4
  %86 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %87 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %88 = load i32, i32* @IIO_SHARED_BY_DIR, align 4
  %89 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %90 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %89, i32 0, i32 4
  %91 = call i32 @iio_device_add_info_mask_type_avail(%struct.iio_dev* %86, %struct.iio_chan_spec* %87, i32 %88, i32* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %82
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %3, align 4
  br label %193

96:                                               ; preds = %82
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %7, align 4
  %100 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %101 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %102 = load i32, i32* @IIO_SHARED_BY_ALL, align 4
  %103 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %104 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %103, i32 0, i32 3
  %105 = call i32 @iio_device_add_info_mask_type(%struct.iio_dev* %100, %struct.iio_chan_spec* %101, i32 %102, i32* %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %96
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %3, align 4
  br label %193

110:                                              ; preds = %96
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %7, align 4
  %114 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %115 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %116 = load i32, i32* @IIO_SHARED_BY_ALL, align 4
  %117 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %118 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %117, i32 0, i32 2
  %119 = call i32 @iio_device_add_info_mask_type_avail(%struct.iio_dev* %114, %struct.iio_chan_spec* %115, i32 %116, i32* %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %110
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %3, align 4
  br label %193

124:                                              ; preds = %110
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %7, align 4
  %128 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %129 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %128, i32 0, i32 1
  %130 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %129, align 8
  %131 = icmp ne %struct.iio_chan_spec_ext_info* %130, null
  br i1 %131, label %132, label %191

132:                                              ; preds = %124
  store i32 0, i32* %9, align 4
  %133 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %134 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %133, i32 0, i32 1
  %135 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %134, align 8
  store %struct.iio_chan_spec_ext_info* %135, %struct.iio_chan_spec_ext_info** %8, align 8
  br label %136

136:                                              ; preds = %187, %132
  %137 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %8, align 8
  %138 = getelementptr inbounds %struct.iio_chan_spec_ext_info, %struct.iio_chan_spec_ext_info* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %190

141:                                              ; preds = %136
  %142 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %8, align 8
  %143 = getelementptr inbounds %struct.iio_chan_spec_ext_info, %struct.iio_chan_spec_ext_info* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %146 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %8, align 8
  %147 = getelementptr inbounds %struct.iio_chan_spec_ext_info, %struct.iio_chan_spec_ext_info* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32* @iio_read_channel_ext_info, i32* null
  %152 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %8, align 8
  %153 = getelementptr inbounds %struct.iio_chan_spec_ext_info, %struct.iio_chan_spec_ext_info* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32* @iio_write_channel_ext_info, i32* null
  %158 = load i32, i32* %9, align 4
  %159 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %8, align 8
  %160 = getelementptr inbounds %struct.iio_chan_spec_ext_info, %struct.iio_chan_spec_ext_info* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %163 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %162, i32 0, i32 1
  %164 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %165 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %164, i32 0, i32 0
  %166 = call i32 @__iio_add_chan_devattr(i64 %144, %struct.iio_chan_spec* %145, i32* %151, i32* %157, i32 %158, i32 %161, i32* %163, i32* %165)
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* %9, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* @EBUSY, align 4
  %171 = sub nsw i32 0, %170
  %172 = icmp eq i32 %169, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %141
  %174 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %8, align 8
  %175 = getelementptr inbounds %struct.iio_chan_spec_ext_info, %struct.iio_chan_spec_ext_info* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  br label %187

179:                                              ; preds = %173, %141
  %180 = load i32, i32* %6, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = load i32, i32* %6, align 4
  store i32 %183, i32* %3, align 4
  br label %193

184:                                              ; preds = %179
  %185 = load i32, i32* %7, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %7, align 4
  br label %187

187:                                              ; preds = %184, %178
  %188 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %8, align 8
  %189 = getelementptr inbounds %struct.iio_chan_spec_ext_info, %struct.iio_chan_spec_ext_info* %188, i32 1
  store %struct.iio_chan_spec_ext_info* %189, %struct.iio_chan_spec_ext_info** %8, align 8
  br label %136

190:                                              ; preds = %136
  br label %191

191:                                              ; preds = %190, %124
  %192 = load i32, i32* %7, align 4
  store i32 %192, i32* %3, align 4
  br label %193

193:                                              ; preds = %191, %182, %122, %108, %94, %80, %66, %52, %38, %24, %14
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i32 @iio_device_add_info_mask_type(%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32*) #1

declare dso_local i32 @iio_device_add_info_mask_type_avail(%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32*) #1

declare dso_local i32 @__iio_add_chan_devattr(i64, %struct.iio_chan_spec*, i32*, i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
