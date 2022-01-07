; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-demux-pinctrl.c_i2c_demux_activate_master.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-demux-pinctrl.c_i2c_demux_activate_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_demux_pinctrl_priv = type { i64, %struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_13__, %struct.TYPE_9__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.i2c_adapter*, i32 }
%struct.i2c_adapter = type { i32, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_11__, i32, i32, i32, i32, %struct.i2c_demux_pinctrl_priv*, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, i8*, i8* }
%struct.pinctrl = type opaque
%struct.pinctrl_state = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@i2c_demux_master_xfer = common dso_local global i8* null, align 8
@i2c_demux_functionality = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"i2c-demux (master i2c-%d)\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to setup demux-adapter %d (%d)\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_demux_pinctrl_priv*, i64)* @i2c_demux_activate_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_demux_activate_master(%struct.i2c_demux_pinctrl_priv* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_demux_pinctrl_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.pinctrl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pinctrl_state*, align 8
  store %struct.i2c_demux_pinctrl_priv* %0, %struct.i2c_demux_pinctrl_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %10, i32 0, i32 2
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = call i32 @of_changeset_apply(i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %185

20:                                               ; preds = %2
  %21 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %21, i32 0, i32 2
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.i2c_adapter* @of_find_i2c_adapter_by_node(i32 %27)
  store %struct.i2c_adapter* %28, %struct.i2c_adapter** %6, align 8
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %30 = icmp ne %struct.i2c_adapter* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %177

34:                                               ; preds = %20
  %35 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %36 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.pinctrl_state* @devm_pinctrl_get(i32 %38)
  %40 = bitcast %struct.pinctrl_state* %39 to %struct.pinctrl*
  store %struct.pinctrl* %40, %struct.pinctrl** %7, align 8
  %41 = load %struct.pinctrl*, %struct.pinctrl** %7, align 8
  %42 = bitcast %struct.pinctrl* %41 to %struct.pinctrl_state*
  %43 = call i64 @IS_ERR(%struct.pinctrl_state* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %34
  %46 = load %struct.pinctrl*, %struct.pinctrl** %7, align 8
  %47 = bitcast %struct.pinctrl* %46 to %struct.pinctrl_state*
  %48 = call i32 @PTR_ERR(%struct.pinctrl_state* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %174

54:                                               ; preds = %45
  br label %77

55:                                               ; preds = %34
  %56 = load %struct.pinctrl*, %struct.pinctrl** %7, align 8
  %57 = bitcast %struct.pinctrl* %56 to %struct.pinctrl_state*
  %58 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.pinctrl_state* @pinctrl_lookup_state(%struct.pinctrl_state* %57, i32 %60)
  store %struct.pinctrl_state* %61, %struct.pinctrl_state** %9, align 8
  %62 = load %struct.pinctrl_state*, %struct.pinctrl_state** %9, align 8
  %63 = call i64 @IS_ERR(%struct.pinctrl_state* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load %struct.pinctrl_state*, %struct.pinctrl_state** %9, align 8
  %67 = call i32 @PTR_ERR(%struct.pinctrl_state* %66)
  store i32 %67, i32* %8, align 4
  br label %174

68:                                               ; preds = %55
  %69 = load %struct.pinctrl*, %struct.pinctrl** %7, align 8
  %70 = bitcast %struct.pinctrl* %69 to %struct.pinctrl_state*
  %71 = load %struct.pinctrl_state*, %struct.pinctrl_state** %9, align 8
  %72 = call i32 @pinctrl_select_state(%struct.pinctrl_state* %70, %struct.pinctrl_state* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %174

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %54
  %78 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %79 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %4, align 8
  %80 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %79, i32 0, i32 2
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  store %struct.i2c_adapter* %78, %struct.i2c_adapter** %84, align 8
  %85 = load i64, i64* %5, align 8
  %86 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %4, align 8
  %87 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load i8*, i8** @i2c_demux_master_xfer, align 8
  %89 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %4, align 8
  %90 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  store i8* %88, i8** %91, align 8
  %92 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %93 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %92, i32 0, i32 5
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %77
  %99 = load i8*, i8** @i2c_demux_master_xfer, align 8
  %100 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %4, align 8
  %101 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  store i8* %99, i8** %102, align 8
  br label %103

103:                                              ; preds = %98, %77
  %104 = load i32, i32* @i2c_demux_functionality, align 4
  %105 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %4, align 8
  %106 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  %108 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %4, align 8
  %109 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %113 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %112)
  %114 = call i32 @snprintf(i32 %111, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @THIS_MODULE, align 4
  %116 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %4, align 8
  %117 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 7
  store i32 %115, i32* %118, align 8
  %119 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %4, align 8
  %120 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %119, i32 0, i32 4
  %121 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %4, align 8
  %122 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 6
  store %struct.TYPE_9__* %120, %struct.TYPE_9__** %123, align 8
  %124 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %4, align 8
  %125 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %4, align 8
  %126 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 5
  store %struct.i2c_demux_pinctrl_priv* %124, %struct.i2c_demux_pinctrl_priv** %127, align 8
  %128 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %129 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %128, i32 0, i32 4
  %130 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %4, align 8
  %131 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  store %struct.TYPE_10__* %129, %struct.TYPE_10__** %133, align 8
  %134 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %135 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %4, align 8
  %138 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 4
  store i32 %136, i32* %139, align 4
  %140 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %141 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %4, align 8
  %144 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 3
  store i32 %142, i32* %145, align 8
  %146 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %147 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %4, align 8
  %150 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 2
  store i32 %148, i32* %151, align 4
  %152 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %153 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %4, align 8
  %156 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  store i32 %154, i32* %157, align 8
  %158 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %4, align 8
  %159 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %158, i32 0, i32 1
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %4, align 8
  %164 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  store i32 %162, i32* %166, align 8
  %167 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %4, align 8
  %168 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %167, i32 0, i32 3
  %169 = call i32 @i2c_add_adapter(%struct.TYPE_13__* %168)
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %103
  br label %174

173:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %197

174:                                              ; preds = %172, %75, %65, %53
  %175 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %176 = call i32 @i2c_put_adapter(%struct.i2c_adapter* %175)
  br label %177

177:                                              ; preds = %174, %31
  %178 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %4, align 8
  %179 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %178, i32 0, i32 2
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %179, align 8
  %181 = load i64, i64* %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = call i32 @of_changeset_revert(i32* %183)
  br label %185

185:                                              ; preds = %177, %19
  %186 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %4, align 8
  %187 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %186, i32 0, i32 1
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %187, align 8
  %189 = load i64, i64* %5, align 8
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @dev_err(%struct.TYPE_14__* %188, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %189, i32 %190)
  %192 = load i64, i64* @EINVAL, align 8
  %193 = sub i64 0, %192
  %194 = load %struct.i2c_demux_pinctrl_priv*, %struct.i2c_demux_pinctrl_priv** %4, align 8
  %195 = getelementptr inbounds %struct.i2c_demux_pinctrl_priv, %struct.i2c_demux_pinctrl_priv* %194, i32 0, i32 0
  store i64 %193, i64* %195, align 8
  %196 = load i32, i32* %8, align 4
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %185, %173
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local i32 @of_changeset_apply(i32*) #1

declare dso_local %struct.i2c_adapter* @of_find_i2c_adapter_by_node(i32) #1

declare dso_local %struct.pinctrl_state* @devm_pinctrl_get(i32) #1

declare dso_local i64 @IS_ERR(%struct.pinctrl_state*) #1

declare dso_local i32 @PTR_ERR(%struct.pinctrl_state*) #1

declare dso_local %struct.pinctrl_state* @pinctrl_lookup_state(%struct.pinctrl_state*, i32) #1

declare dso_local i32 @pinctrl_select_state(%struct.pinctrl_state*, %struct.pinctrl_state*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @i2c_adapter_id(%struct.i2c_adapter*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_13__*) #1

declare dso_local i32 @i2c_put_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @of_changeset_revert(i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
