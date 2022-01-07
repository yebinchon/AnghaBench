; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_fsi_slave_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_fsi_slave_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_slave = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.fsi_device = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.fsi_slave* }
%struct.TYPE_6__ = type { i32 }

@engine_page_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"error reading slave registers\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"crc error in slave register at 0x%04x\0A\00", align 1
@FSI_SLAVE_CONF_SLOTS_MASK = common dso_local global i32 0, align 4
@FSI_SLAVE_CONF_SLOTS_SHIFT = common dso_local global i32 0, align 4
@FSI_SLAVE_CONF_VERSION_MASK = common dso_local global i32 0, align 4
@FSI_SLAVE_CONF_VERSION_SHIFT = common dso_local global i32 0, align 4
@FSI_SLAVE_CONF_TYPE_MASK = common dso_local global i32 0, align 4
@FSI_SLAVE_CONF_TYPE_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"engine[%i]: type %x, version %x, addr %x size %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%02x:%02x:%02x:%02x\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"add failed: %d\0A\00", align 1
@FSI_SLAVE_CONF_NEXT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_slave*)* @fsi_slave_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_slave_scan(%struct.fsi_slave* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsi_slave*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fsi_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fsi_slave* %0, %struct.fsi_slave** %3, align 8
  %14 = load i32, i32* @engine_page_size, align 4
  %15 = mul nsw i32 %14, 3
  store i32 %15, i32* %4, align 4
  store i32 2, i32* %6, align 4
  br label %16

16:                                               ; preds = %162, %1
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = load i32, i32* @engine_page_size, align 4
  %20 = sext i32 %19 to i64
  %21 = udiv i64 %20, 4
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %165

23:                                               ; preds = %16
  %24 = load %struct.fsi_slave*, %struct.fsi_slave** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i32 @fsi_slave_read(%struct.fsi_slave* %24, i32 %29, i32* %13, i32 4)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load %struct.fsi_slave*, %struct.fsi_slave** %3, align 8
  %35 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %34, i32 0, i32 0
  %36 = call i32 (i32*, i8*, ...) @dev_warn(i32* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %166

37:                                               ; preds = %23
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @be32_to_cpu(i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @crc4(i32 0, i32 %40, i32 32)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.fsi_slave*, %struct.fsi_slave** %3, align 8
  %46 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %45, i32 0, i32 0
  %47 = load i32, i32* %6, align 4
  %48 = call i32 (i32*, i8*, ...) @dev_warn(i32* %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  store i32 -1, i32* %2, align 4
  br label %166

49:                                               ; preds = %37
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @FSI_SLAVE_CONF_SLOTS_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @FSI_SLAVE_CONF_SLOTS_SHIFT, align 4
  %54 = ashr i32 %52, %53
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @FSI_SLAVE_CONF_VERSION_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @FSI_SLAVE_CONF_VERSION_SHIFT, align 4
  %59 = ashr i32 %57, %58
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @FSI_SLAVE_CONF_TYPE_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @FSI_SLAVE_CONF_TYPE_SHIFT, align 4
  %64 = ashr i32 %62, %63
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %150

67:                                               ; preds = %49
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %150

70:                                               ; preds = %67
  %71 = load %struct.fsi_slave*, %struct.fsi_slave** %3, align 8
  %72 = call %struct.fsi_device* @fsi_create_device(%struct.fsi_slave* %71)
  store %struct.fsi_device* %72, %struct.fsi_device** %11, align 8
  %73 = load %struct.fsi_device*, %struct.fsi_device** %11, align 8
  %74 = icmp ne %struct.fsi_device* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %166

78:                                               ; preds = %70
  %79 = load %struct.fsi_slave*, %struct.fsi_slave** %3, align 8
  %80 = load %struct.fsi_device*, %struct.fsi_device** %11, align 8
  %81 = getelementptr inbounds %struct.fsi_device, %struct.fsi_device* %80, i32 0, i32 6
  store %struct.fsi_slave* %79, %struct.fsi_slave** %81, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.fsi_device*, %struct.fsi_device** %11, align 8
  %84 = getelementptr inbounds %struct.fsi_device, %struct.fsi_device* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.fsi_device*, %struct.fsi_device** %11, align 8
  %87 = getelementptr inbounds %struct.fsi_device, %struct.fsi_device* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.fsi_device*, %struct.fsi_device** %11, align 8
  %90 = getelementptr inbounds %struct.fsi_device, %struct.fsi_device* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.fsi_device*, %struct.fsi_device** %11, align 8
  %93 = getelementptr inbounds %struct.fsi_device, %struct.fsi_device* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @engine_page_size, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load %struct.fsi_device*, %struct.fsi_device** %11, align 8
  %98 = getelementptr inbounds %struct.fsi_device, %struct.fsi_device* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load %struct.fsi_slave*, %struct.fsi_slave** %3, align 8
  %100 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %99, i32 0, i32 0
  %101 = load %struct.fsi_device*, %struct.fsi_device** %11, align 8
  %102 = getelementptr inbounds %struct.fsi_device, %struct.fsi_device* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.fsi_device*, %struct.fsi_device** %11, align 8
  %105 = getelementptr inbounds %struct.fsi_device, %struct.fsi_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.fsi_device*, %struct.fsi_device** %11, align 8
  %109 = getelementptr inbounds %struct.fsi_device, %struct.fsi_device* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.fsi_device*, %struct.fsi_device** %11, align 8
  %112 = getelementptr inbounds %struct.fsi_device, %struct.fsi_device* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @dev_dbg(i32* %100, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %106, i32 %107, i32 %110, i32 %113)
  %115 = load %struct.fsi_device*, %struct.fsi_device** %11, align 8
  %116 = getelementptr inbounds %struct.fsi_device, %struct.fsi_device* %115, i32 0, i32 5
  %117 = load %struct.fsi_slave*, %struct.fsi_slave** %3, align 8
  %118 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %117, i32 0, i32 3
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.fsi_slave*, %struct.fsi_slave** %3, align 8
  %123 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.fsi_slave*, %struct.fsi_slave** %3, align 8
  %126 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %6, align 4
  %129 = sub nsw i32 %128, 2
  %130 = call i32 @dev_set_name(%struct.TYPE_6__* %116, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %121, i32 %124, i32 %127, i32 %129)
  %131 = load %struct.fsi_device*, %struct.fsi_device** %11, align 8
  %132 = call i32 @fsi_device_find_of_node(%struct.fsi_device* %131)
  %133 = load %struct.fsi_device*, %struct.fsi_device** %11, align 8
  %134 = getelementptr inbounds %struct.fsi_device, %struct.fsi_device* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 4
  %136 = load %struct.fsi_device*, %struct.fsi_device** %11, align 8
  %137 = getelementptr inbounds %struct.fsi_device, %struct.fsi_device* %136, i32 0, i32 5
  %138 = call i32 @device_register(%struct.TYPE_6__* %137)
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %5, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %78
  %142 = load %struct.fsi_slave*, %struct.fsi_slave** %3, align 8
  %143 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %142, i32 0, i32 0
  %144 = load i32, i32* %5, align 4
  %145 = call i32 (i32*, i8*, ...) @dev_warn(i32* %143, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %144)
  %146 = load %struct.fsi_device*, %struct.fsi_device** %11, align 8
  %147 = getelementptr inbounds %struct.fsi_device, %struct.fsi_device* %146, i32 0, i32 5
  %148 = call i32 @put_device(%struct.TYPE_6__* %147)
  br label %149

149:                                              ; preds = %141, %78
  br label %150

150:                                              ; preds = %149, %67, %49
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* @engine_page_size, align 4
  %153 = mul nsw i32 %151, %152
  %154 = load i32, i32* %4, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %4, align 4
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* @FSI_SLAVE_CONF_NEXT_MASK, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %150
  br label %165

161:                                              ; preds = %150
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %6, align 4
  br label %16

165:                                              ; preds = %160, %16
  store i32 0, i32* %2, align 4
  br label %166

166:                                              ; preds = %165, %75, %44, %33
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @fsi_slave_read(%struct.fsi_slave*, i32, i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @crc4(i32, i32, i32) #1

declare dso_local %struct.fsi_device* @fsi_create_device(%struct.fsi_slave*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_6__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @fsi_device_find_of_node(%struct.fsi_device*) #1

declare dso_local i32 @device_register(%struct.TYPE_6__*) #1

declare dso_local i32 @put_device(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
