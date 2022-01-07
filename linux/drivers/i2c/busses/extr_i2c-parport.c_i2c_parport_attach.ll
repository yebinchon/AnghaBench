; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-parport.c_i2c_parport_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-parport.c_i2c_parport_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.parport*, i32* }
%struct.parport = type { i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_20__, %struct.TYPE_15__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.i2c_par = type { %struct.TYPE_18__*, i32, i64, i32, %struct.TYPE_13__, %struct.TYPE_19__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_16__, %struct.TYPE_19__*, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.pardev_cb = type { %struct.i2c_par*, i32, i32 }

@MAX_DEVICE = common dso_local global i32 0, align 4
@parport = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"Not using parport%d.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@PARPORT_FLAG_EXCL = common dso_local global i32 0, align 4
@i2c_parport_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"attaching to %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"i2c-parport\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Unable to register with parport\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Parallel port adapter\00", align 1
@parport_algo_data = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@adapter_parm = common dso_local global %struct.TYPE_14__* null, align 8
@type = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"Could not claim parallel port\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Unable to register with I2C\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Failed to register ARA client\0A\00", align 1
@adapter_list_lock = common dso_local global i32 0, align 4
@adapter_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*)* @i2c_parport_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_parport_attach(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca %struct.i2c_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pardev_cb, align 8
  store %struct.parport* %0, %struct.parport** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %30, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MAX_DEVICE, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = load i32*, i32** @parport, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %30

18:                                               ; preds = %10
  %19 = load %struct.parport*, %struct.parport** %2, align 8
  %20 = getelementptr inbounds %struct.parport, %struct.parport* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32*, i32** @parport, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %21, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %33

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29, %17
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %6

33:                                               ; preds = %28, %6
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @MAX_DEVICE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.parport*, %struct.parport** %2, align 8
  %39 = getelementptr inbounds %struct.parport, %struct.parport* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %212

42:                                               ; preds = %33
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.i2c_par* @kzalloc(i32 88, i32 %43)
  store %struct.i2c_par* %44, %struct.i2c_par** %3, align 8
  %45 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %46 = icmp ne %struct.i2c_par* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %212

48:                                               ; preds = %42
  %49 = call i32 @memset(%struct.pardev_cb* %5, i32 0, i32 16)
  %50 = load i32, i32* @PARPORT_FLAG_EXCL, align 4
  %51 = getelementptr inbounds %struct.pardev_cb, %struct.pardev_cb* %5, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @i2c_parport_irq, align 4
  %53 = getelementptr inbounds %struct.pardev_cb, %struct.pardev_cb* %5, i32 0, i32 1
  store i32 %52, i32* %53, align 8
  %54 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %55 = getelementptr inbounds %struct.pardev_cb, %struct.pardev_cb* %5, i32 0, i32 0
  store %struct.i2c_par* %54, %struct.i2c_par** %55, align 8
  %56 = load %struct.parport*, %struct.parport** %2, align 8
  %57 = getelementptr inbounds %struct.parport, %struct.parport* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.parport*, %struct.parport** %2, align 8
  %61 = call i32 @parport_disable_irq(%struct.parport* %60)
  %62 = load %struct.parport*, %struct.parport** %2, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call %struct.TYPE_18__* @parport_register_dev_model(%struct.parport* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), %struct.pardev_cb* %5, i32 %63)
  %65 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %66 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %65, i32 0, i32 0
  store %struct.TYPE_18__* %64, %struct.TYPE_18__** %66, align 8
  %67 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %68 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %67, i32 0, i32 0
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %68, align 8
  %70 = icmp ne %struct.TYPE_18__* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %48
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %209

73:                                               ; preds = %48
  %74 = load i32, i32* @THIS_MODULE, align 4
  %75 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %76 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 4
  store i32 %74, i32* %77, align 8
  %78 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %79 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %80 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 3
  store i32 %78, i32* %81, align 4
  %82 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %83 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @strlcpy(i32 %85, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %87 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %88 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %87, i32 0, i32 5
  %89 = bitcast %struct.TYPE_19__* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 bitcast (%struct.TYPE_19__* @parport_algo_data to i8*), i64 24, i1 false)
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** @adapter_parm, align 8
  %91 = load i64, i64* @type, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %73
  %98 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %99 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 2
  store i32* null, i32** %100, align 8
  %101 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %102 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  store i32 50, i32* %103, align 8
  br label %104

104:                                              ; preds = %97, %73
  %105 = load %struct.parport*, %struct.parport** %2, align 8
  %106 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %107 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  store %struct.parport* %105, %struct.parport** %108, align 8
  %109 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %110 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %109, i32 0, i32 5
  %111 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %112 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  store %struct.TYPE_19__* %110, %struct.TYPE_19__** %113, align 8
  %114 = load %struct.parport*, %struct.parport** %2, align 8
  %115 = getelementptr inbounds %struct.parport, %struct.parport* %114, i32 0, i32 2
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %120 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  store i32 %118, i32* %122, align 8
  %123 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %124 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %123, i32 0, i32 0
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %124, align 8
  %126 = call i64 @parport_claim_or_block(%struct.TYPE_18__* %125)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %104
  %129 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %130 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %129, i32 0, i32 0
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  %133 = call i32 @dev_err(i32* %132, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %200

134:                                              ; preds = %104
  %135 = load %struct.parport*, %struct.parport** %2, align 8
  %136 = call i32 @parport_setsda(%struct.parport* %135, i32 1)
  %137 = load %struct.parport*, %struct.parport** %2, align 8
  %138 = call i32 @parport_setscl(%struct.parport* %137, i32 1)
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** @adapter_parm, align 8
  %140 = load i64, i64* @type, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %134
  %147 = load %struct.parport*, %struct.parport** %2, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** @adapter_parm, align 8
  %149 = load i64, i64* @type, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  %152 = call i32 @line_set(%struct.parport* %147, i32 1, %struct.TYPE_20__* %151)
  %153 = call i32 @msleep(i32 100)
  br label %154

154:                                              ; preds = %146, %134
  %155 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %156 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %155, i32 0, i32 4
  %157 = call i64 @i2c_bit_add_bus(%struct.TYPE_13__* %156)
  %158 = icmp slt i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %161 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %160, i32 0, i32 0
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 0
  %164 = call i32 @dev_err(i32* %163, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %200

165:                                              ; preds = %154
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** @adapter_parm, align 8
  %167 = load i64, i64* @type, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %194

172:                                              ; preds = %165
  %173 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %174 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %173, i32 0, i32 4
  %175 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %176 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %175, i32 0, i32 3
  %177 = call i64 @i2c_setup_smbus_alert(%struct.TYPE_13__* %174, i32* %176)
  %178 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %179 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %178, i32 0, i32 2
  store i64 %177, i64* %179, align 8
  %180 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %181 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %172
  %185 = load %struct.parport*, %struct.parport** %2, align 8
  %186 = call i32 @parport_enable_irq(%struct.parport* %185)
  br label %193

187:                                              ; preds = %172
  %188 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %189 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %188, i32 0, i32 0
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 0
  %192 = call i32 @dev_warn(i32* %191, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %193

193:                                              ; preds = %187, %184
  br label %194

194:                                              ; preds = %193, %165
  %195 = call i32 @mutex_lock(i32* @adapter_list_lock)
  %196 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %197 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %196, i32 0, i32 1
  %198 = call i32 @list_add_tail(i32* %197, i32* @adapter_list)
  %199 = call i32 @mutex_unlock(i32* @adapter_list_lock)
  br label %212

200:                                              ; preds = %159, %128
  %201 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %202 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %201, i32 0, i32 0
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %202, align 8
  %204 = call i32 @parport_release(%struct.TYPE_18__* %203)
  %205 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %206 = getelementptr inbounds %struct.i2c_par, %struct.i2c_par* %205, i32 0, i32 0
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %206, align 8
  %208 = call i32 @parport_unregister_device(%struct.TYPE_18__* %207)
  br label %209

209:                                              ; preds = %200, %71
  %210 = load %struct.i2c_par*, %struct.i2c_par** %3, align 8
  %211 = call i32 @kfree(%struct.i2c_par* %210)
  br label %212

212:                                              ; preds = %209, %194, %47, %37
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.i2c_par* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.pardev_cb*, i32, i32) #1

declare dso_local i32 @parport_disable_irq(%struct.parport*) #1

declare dso_local %struct.TYPE_18__* @parport_register_dev_model(%struct.parport*, i8*, %struct.pardev_cb*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @parport_claim_or_block(%struct.TYPE_18__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @parport_setsda(%struct.parport*, i32) #1

declare dso_local i32 @parport_setscl(%struct.parport*, i32) #1

declare dso_local i32 @line_set(%struct.parport*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @i2c_bit_add_bus(%struct.TYPE_13__*) #1

declare dso_local i64 @i2c_setup_smbus_alert(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @parport_enable_irq(%struct.parport*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @parport_release(%struct.TYPE_18__*) #1

declare dso_local i32 @parport_unregister_device(%struct.TYPE_18__*) #1

declare dso_local i32 @kfree(%struct.i2c_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
