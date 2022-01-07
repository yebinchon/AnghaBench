; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_fsi_slave_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_fsi_slave_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master = type { i32, i32, i32 (%struct.fsi_master*, i32, i32, i32)*, i32 }
%struct.fsi_slave = type { i32, i32, i32, i32, %struct.TYPE_7__, i32, i32, i32, i64, %struct.fsi_master*, i8* }
%struct.TYPE_7__ = type { i64, i32, i32, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"can't read slave %02x:%02x %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"slave %02x:%02x invalid cfam id CRC!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"fsi: found chip %08x at %02x:%02x:%02x\0A\00", align 1
@FSI_MASTER_FLAG_SWCLOCK = common dso_local global i32 0, align 4
@FSI_LLMODE_ASYNC = common dso_local global i32 0, align 4
@FSI_SLAVE_BASE = common dso_local global i64 0, align 8
@FSI_LLMODE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"can't set llmode on slave:%02x:%02x %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"slave@%02x:%02x\00", align 1
@cfam_type = common dso_local global i32 0, align 4
@fsi_slave_release = common dso_local global i32 0, align 4
@FSI_SLAVE_SIZE_23b = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"chip-id\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"can't set smode on slave:%02x:%02x %d\0A\00", align 1
@fsi_dev_cfam = common dso_local global i32 0, align 4
@cfam_fops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"Error %d creating slave device\0A\00", align 1
@fsi_slave_raw_attr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to create raw attr: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"failed during slave scan with: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master*, i32, i64)* @fsi_slave_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_slave_init(%struct.fsi_master* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsi_master*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.fsi_slave*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.fsi_master* %0, %struct.fsi_master** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %261

20:                                               ; preds = %3
  %21 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @fsi_master_read(%struct.fsi_master* %21, i32 %22, i64 %23, i32 0, i32* %11, i32 4)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %29 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %28, i32 0, i32 1
  %30 = load i32, i32* %6, align 4
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %31, i32 %32)
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %261

36:                                               ; preds = %20
  %37 = load i32, i32* %11, align 4
  %38 = call i8* @be32_to_cpu(i32 %37)
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i64 @crc4(i32 0, i8* %39, i32 32)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %45 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %44, i32 0, i32 1
  %46 = bitcast i32* %45 to %struct.TYPE_7__*
  %47 = load i32, i32* %6, align 4
  %48 = load i64, i64* %7, align 8
  %49 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @dev_warn(%struct.TYPE_7__* %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %47, i64 %48)
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %261

52:                                               ; preds = %36
  %53 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %54 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %53, i32 0, i32 1
  %55 = load i8*, i8** %8, align 8
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %58 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i64, i64* %7, align 8
  %62 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %59, i32 %60, i64 %61)
  %63 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %64 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @FSI_MASTER_FLAG_SWCLOCK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %52
  %70 = load i32, i32* @FSI_LLMODE_ASYNC, align 4
  %71 = call i32 @cpu_to_be32(i32 %70)
  store i32 %71, i32* %12, align 4
  %72 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* @FSI_SLAVE_BASE, align 8
  %76 = load i64, i64* @FSI_LLMODE, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @fsi_master_write(%struct.fsi_master* %72, i32 %73, i64 %74, i64 %77, i32* %12, i32 4)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %69
  %82 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %83 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %82, i32 0, i32 1
  %84 = bitcast i32* %83 to %struct.TYPE_7__*
  %85 = load i32, i32* %6, align 4
  %86 = load i64, i64* %7, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @dev_warn(%struct.TYPE_7__* %84, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %85, i64 %86, i32 %87)
  br label %89

89:                                               ; preds = %81, %69
  br label %90

90:                                               ; preds = %89, %52
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call %struct.fsi_slave* @kzalloc(i32 88, i32 %91)
  store %struct.fsi_slave* %92, %struct.fsi_slave** %9, align 8
  %93 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %94 = icmp ne %struct.fsi_slave* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %261

98:                                               ; preds = %90
  %99 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %100 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %99, i32 0, i32 4
  %101 = load i32, i32* %6, align 4
  %102 = load i64, i64* %7, align 8
  %103 = call i32 @dev_set_name(%struct.TYPE_7__* %100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %101, i64 %102)
  %104 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %105 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 4
  store i32* @cfam_type, i32** %106, align 8
  %107 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %108 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %107, i32 0, i32 1
  %109 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %110 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  store i32* %108, i32** %111, align 8
  %112 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load i64, i64* %7, align 8
  %115 = call i64 @fsi_slave_find_of_node(%struct.fsi_master* %112, i32 %113, i64 %114)
  %116 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %117 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  store i64 %115, i64* %118, align 8
  %119 = load i32, i32* @fsi_slave_release, align 4
  %120 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %121 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  store i32 %119, i32* %122, align 4
  %123 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %124 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %123, i32 0, i32 4
  %125 = call i32 @device_initialize(%struct.TYPE_7__* %124)
  %126 = load i8*, i8** %8, align 8
  %127 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %128 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %127, i32 0, i32 10
  store i8* %126, i8** %128, align 8
  %129 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %130 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %131 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %130, i32 0, i32 9
  store %struct.fsi_master* %129, %struct.fsi_master** %131, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %134 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load i64, i64* %7, align 8
  %136 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %137 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %136, i32 0, i32 8
  store i64 %135, i64* %137, align 8
  %138 = load i32, i32* @FSI_SLAVE_SIZE_23b, align 4
  %139 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %140 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %139, i32 0, i32 7
  store i32 %138, i32* %140, align 8
  %141 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %142 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %141, i32 0, i32 1
  store i32 16, i32* %142, align 4
  %143 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %144 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %143, i32 0, i32 2
  store i32 16, i32* %144, align 8
  %145 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %146 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %145, i32 0, i32 3
  store i32 -1, i32* %146, align 4
  %147 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %148 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %165

152:                                              ; preds = %98
  %153 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %154 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @of_property_read_u32(i64 %156, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %14)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %152
  %160 = load i8*, i8** %14, align 8
  %161 = ptrtoint i8* %160 to i32
  %162 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %163 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %159, %152
  br label %165

165:                                              ; preds = %164, %98
  %166 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %167 = call i32 @fsi_slave_set_smode(%struct.fsi_slave* %166)
  store i32 %167, i32* %13, align 4
  %168 = load i32, i32* %13, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %165
  %171 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %172 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %171, i32 0, i32 1
  %173 = bitcast i32* %172 to %struct.TYPE_7__*
  %174 = load i32, i32* %6, align 4
  %175 = load i64, i64* %7, align 8
  %176 = load i32, i32* %13, align 4
  %177 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @dev_warn(%struct.TYPE_7__* %173, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %174, i64 %175, i32 %176)
  br label %252

178:                                              ; preds = %165
  %179 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %180 = load i32, i32* @fsi_dev_cfam, align 4
  %181 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %182 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %185 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %184, i32 0, i32 6
  %186 = call i32 @__fsi_get_new_minor(%struct.fsi_slave* %179, i32 %180, i32* %183, i32* %185)
  store i32 %186, i32* %13, align 4
  %187 = load i32, i32* %13, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %178
  br label %252

190:                                              ; preds = %178
  %191 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %192 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %191, i32 0, i32 5
  %193 = call i32 @cdev_init(i32* %192, i32* @cfam_fops)
  %194 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %195 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %194, i32 0, i32 5
  %196 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %197 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %196, i32 0, i32 4
  %198 = call i32 @cdev_device_add(i32* %195, %struct.TYPE_7__* %197)
  store i32 %198, i32* %13, align 4
  %199 = load i32, i32* %13, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %190
  %202 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %203 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %202, i32 0, i32 4
  %204 = load i32, i32* %13, align 4
  %205 = call i32 @dev_err(%struct.TYPE_7__* %203, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %204)
  br label %246

206:                                              ; preds = %190
  %207 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %208 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %207, i32 0, i32 2
  %209 = load i32 (%struct.fsi_master*, i32, i32, i32)*, i32 (%struct.fsi_master*, i32, i32, i32)** %208, align 8
  %210 = icmp ne i32 (%struct.fsi_master*, i32, i32, i32)* %209, null
  br i1 %210, label %211, label %224

211:                                              ; preds = %206
  %212 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %213 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %212, i32 0, i32 2
  %214 = load i32 (%struct.fsi_master*, i32, i32, i32)*, i32 (%struct.fsi_master*, i32, i32, i32)** %213, align 8
  %215 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %216 = load i32, i32* %6, align 4
  %217 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %218 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %221 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = call i32 %214(%struct.fsi_master* %215, i32 %216, i32 %219, i32 %222)
  br label %224

224:                                              ; preds = %211, %206
  %225 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %226 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %225, i32 0, i32 4
  %227 = call i32 @device_create_bin_file(%struct.TYPE_7__* %226, i32* @fsi_slave_raw_attr)
  store i32 %227, i32* %13, align 4
  %228 = load i32, i32* %13, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %224
  %231 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %232 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %231, i32 0, i32 4
  %233 = load i32, i32* %13, align 4
  %234 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @dev_warn(%struct.TYPE_7__* %232, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %233)
  br label %235

235:                                              ; preds = %230, %224
  %236 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %237 = call i32 @fsi_slave_scan(%struct.fsi_slave* %236)
  store i32 %237, i32* %13, align 4
  %238 = load i32, i32* %13, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %235
  %241 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %242 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %241, i32 0, i32 1
  %243 = load i32, i32* %13, align 4
  %244 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %242, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %243)
  br label %245

245:                                              ; preds = %240, %235
  store i32 0, i32* %4, align 4
  br label %261

246:                                              ; preds = %201
  %247 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %248 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %247, i32 0, i32 4
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @fsi_free_minor(i32 %250)
  br label %252

252:                                              ; preds = %246, %189, %170
  %253 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %254 = getelementptr inbounds %struct.fsi_slave, %struct.fsi_slave* %253, i32 0, i32 4
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = call i32 @of_node_put(i64 %256)
  %258 = load %struct.fsi_slave*, %struct.fsi_slave** %9, align 8
  %259 = call i32 @kfree(%struct.fsi_slave* %258)
  %260 = load i32, i32* %13, align 4
  store i32 %260, i32* %4, align 4
  br label %261

261:                                              ; preds = %252, %245, %95, %43, %27, %17
  %262 = load i32, i32* %4, align 4
  ret i32 %262
}

declare dso_local i32 @fsi_master_read(%struct.fsi_master*, i32, i64, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i64 @crc4(i32, i8*, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_7__*, i8*, i32, ...) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @fsi_master_write(%struct.fsi_master*, i32, i64, i64, i32*, i32) #1

declare dso_local %struct.fsi_slave* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_7__*, i8*, i32, i64) #1

declare dso_local i64 @fsi_slave_find_of_node(%struct.fsi_master*, i32, i64) #1

declare dso_local i32 @device_initialize(%struct.TYPE_7__*) #1

declare dso_local i32 @of_property_read_u32(i64, i8*, i8**) #1

declare dso_local i32 @fsi_slave_set_smode(%struct.fsi_slave*) #1

declare dso_local i32 @__fsi_get_new_minor(%struct.fsi_slave*, i32, i32*, i32*) #1

declare dso_local i32 @cdev_init(i32*, i32*) #1

declare dso_local i32 @cdev_device_add(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @device_create_bin_file(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @fsi_slave_scan(%struct.fsi_slave*) #1

declare dso_local i32 @fsi_free_minor(i32) #1

declare dso_local i32 @of_node_put(i64) #1

declare dso_local i32 @kfree(%struct.fsi_slave*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
