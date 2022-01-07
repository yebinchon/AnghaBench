; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-scmi.c_acpi_smbus_cmi_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-scmi.c_acpi_smbus_cmi_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, %struct.acpi_smbus_cmi* }
%struct.acpi_smbus_cmi = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i8* }
%union.i2c_smbus_data = type { i32* }
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%union.acpi_object = type { i64 }
%struct.acpi_buffer = type { %union.acpi_object*, i32*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { %union.acpi_object* }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"access size: %d %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@ACPI_SMBUS_PRTCL_QUICK = common dso_local global i8 0, align 1
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@ACPI_SMBUS_PRTCL_BYTE = common dso_local global i8 0, align 1
@ACPI_SMBUS_PRTCL_BYTE_DATA = common dso_local global i8 0, align 1
@ACPI_SMBUS_PRTCL_WORD_DATA = common dso_local global i8 0, align 1
@ACPI_SMBUS_PRTCL_BLOCK_DATA = common dso_local global i8 0, align 1
@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"Unsupported transaction %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@ACPI_SMBUS_PRTCL_READ = common dso_local global i8 0, align 1
@ACPI_SMBUS_PRTCL_WRITE = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to evaluate %s: %i\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"Invalid argument type\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"%s return status: %i\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"Transaction status: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i8, i16, i8, i8, i32, %union.i2c_smbus_data*)* @acpi_smbus_cmi_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_smbus_cmi_access(%struct.i2c_adapter* %0, i8 zeroext %1, i16 zeroext %2, i8 signext %3, i8 zeroext %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.acpi_smbus_cmi*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca %struct.acpi_object_list, align 8
  %21 = alloca [5 x %union.acpi_object], align 16
  %22 = alloca %struct.acpi_buffer, align 8
  %23 = alloca %union.acpi_object*, align 8
  %24 = alloca %union.acpi_object*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i8 %1, i8* %10, align 1
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i8 %4, i8* %13, align 1
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  store i32 0, i32* %16, align 4
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %28 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %27, i32 0, i32 1
  %29 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %28, align 8
  store %struct.acpi_smbus_cmi* %29, %struct.acpi_smbus_cmi** %17, align 8
  store i32 0, i32* %19, align 4
  %30 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %22, i32 0, i32 0
  %31 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to %union.acpi_object*
  store %union.acpi_object* %33, %union.acpi_object** %30, align 8
  %34 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %22, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %22, i32 0, i32 2
  store i32 0, i32* %35, align 8
  store i32 0, i32* %26, align 4
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %37 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %36, i32 0, i32 0
  %38 = load i32, i32* %14, align 4
  %39 = load i8, i8* %12, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %44 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %38, i8* %43)
  %45 = load i32, i32* %14, align 4
  switch i32 %45, label %183 [
    i32 129, label %46
    i32 131, label %67
    i32 130, label %89
    i32 128, label %113
    i32 132, label %137
  ]

46:                                               ; preds = %7
  %47 = load i8, i8* @ACPI_SMBUS_PRTCL_QUICK, align 1
  store i8 %47, i8* %18, align 1
  store i8 0, i8* %13, align 1
  %48 = load i8, i8* %12, align 1
  %49 = sext i8 %48 to i32
  %50 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %55 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 3
  %56 = bitcast %union.acpi_object* %55 to i64*
  store i64 %54, i64* %56, align 8
  %57 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 3
  %58 = bitcast %union.acpi_object* %57 to %struct.TYPE_6__*
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %61 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 4
  %62 = bitcast %union.acpi_object* %61 to i64*
  store i64 %60, i64* %62, align 16
  %63 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 4
  %64 = bitcast %union.acpi_object* %63 to %struct.TYPE_6__*
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 0, i32* %65, align 16
  br label %66

66:                                               ; preds = %53, %46
  br label %190

67:                                               ; preds = %7
  %68 = load i8, i8* @ACPI_SMBUS_PRTCL_BYTE, align 1
  store i8 %68, i8* %18, align 1
  %69 = load i8, i8* %12, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %67
  %75 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %76 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 3
  %77 = bitcast %union.acpi_object* %76 to i64*
  store i64 %75, i64* %77, align 8
  %78 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 3
  %79 = bitcast %union.acpi_object* %78 to %struct.TYPE_6__*
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  %81 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %82 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 4
  %83 = bitcast %union.acpi_object* %82 to i64*
  store i64 %81, i64* %83, align 16
  %84 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 4
  %85 = bitcast %union.acpi_object* %84 to %struct.TYPE_6__*
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i32 0, i32* %86, align 16
  br label %88

87:                                               ; preds = %67
  store i8 0, i8* %13, align 1
  br label %88

88:                                               ; preds = %87, %74
  br label %190

89:                                               ; preds = %7
  %90 = load i8, i8* @ACPI_SMBUS_PRTCL_BYTE_DATA, align 1
  store i8 %90, i8* %18, align 1
  %91 = load i8, i8* %12, align 1
  %92 = sext i8 %91 to i32
  %93 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %89
  %97 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %98 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 3
  %99 = bitcast %union.acpi_object* %98 to i64*
  store i64 %97, i64* %99, align 8
  %100 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 3
  %101 = bitcast %union.acpi_object* %100 to %struct.TYPE_6__*
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  %103 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %104 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 4
  %105 = bitcast %union.acpi_object* %104 to i64*
  store i64 %103, i64* %105, align 16
  %106 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %107 = bitcast %union.i2c_smbus_data* %106 to i32*
  %108 = load i32, i32* %107, align 8
  %109 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 4
  %110 = bitcast %union.acpi_object* %109 to %struct.TYPE_6__*
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 16
  br label %112

112:                                              ; preds = %96, %89
  br label %190

113:                                              ; preds = %7
  %114 = load i8, i8* @ACPI_SMBUS_PRTCL_WORD_DATA, align 1
  store i8 %114, i8* %18, align 1
  %115 = load i8, i8* %12, align 1
  %116 = sext i8 %115 to i32
  %117 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %136

120:                                              ; preds = %113
  %121 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %122 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 3
  %123 = bitcast %union.acpi_object* %122 to i64*
  store i64 %121, i64* %123, align 8
  %124 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 3
  %125 = bitcast %union.acpi_object* %124 to %struct.TYPE_6__*
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  store i32 2, i32* %126, align 8
  %127 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %128 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 4
  %129 = bitcast %union.acpi_object* %128 to i64*
  store i64 %127, i64* %129, align 16
  %130 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %131 = bitcast %union.i2c_smbus_data* %130 to i32*
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 4
  %134 = bitcast %union.acpi_object* %133 to %struct.TYPE_6__*
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 16
  br label %136

136:                                              ; preds = %120, %113
  br label %190

137:                                              ; preds = %7
  %138 = load i8, i8* @ACPI_SMBUS_PRTCL_BLOCK_DATA, align 1
  store i8 %138, i8* %18, align 1
  %139 = load i8, i8* %12, align 1
  %140 = sext i8 %139 to i32
  %141 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %144, label %182

144:                                              ; preds = %137
  %145 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %146 = bitcast %union.i2c_smbus_data* %145 to i32**
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %26, align 4
  %150 = load i32, i32* %26, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %144
  %153 = load i32, i32* %26, align 4
  %154 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %155 = icmp sgt i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %152, %144
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %8, align 4
  br label %450

159:                                              ; preds = %152
  %160 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %161 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 3
  %162 = bitcast %union.acpi_object* %161 to i64*
  store i64 %160, i64* %162, align 8
  %163 = load i32, i32* %26, align 4
  %164 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 3
  %165 = bitcast %union.acpi_object* %164 to %struct.TYPE_6__*
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  store i32 %163, i32* %166, align 8
  %167 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %168 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 4
  %169 = bitcast %union.acpi_object* %168 to i64*
  store i64 %167, i64* %169, align 16
  %170 = load i32, i32* %26, align 4
  %171 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 4
  %172 = bitcast %union.acpi_object* %171 to %struct.TYPE_7__*
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  store i32 %170, i32* %173, align 16
  %174 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %175 = bitcast %union.i2c_smbus_data* %174 to i32**
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = ptrtoint i32* %177 to i32
  %179 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 4
  %180 = bitcast %union.acpi_object* %179 to %struct.TYPE_7__*
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  store i32 %178, i32* %181, align 4
  br label %182

182:                                              ; preds = %159, %137
  br label %190

183:                                              ; preds = %7
  %184 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %185 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %184, i32 0, i32 0
  %186 = load i32, i32* %14, align 4
  %187 = call i32 @dev_warn(i32* %185, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* @EOPNOTSUPP, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %8, align 4
  br label %450

190:                                              ; preds = %182, %136, %112, %88, %66
  %191 = load i8, i8* %12, align 1
  %192 = sext i8 %191 to i32
  %193 = load i8, i8* @I2C_SMBUS_READ, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %192, %194
  br i1 %195, label %196, label %209

196:                                              ; preds = %190
  %197 = load i8, i8* @ACPI_SMBUS_PRTCL_READ, align 1
  %198 = zext i8 %197 to i32
  %199 = load i8, i8* %18, align 1
  %200 = zext i8 %199 to i32
  %201 = or i32 %200, %198
  %202 = trunc i32 %201 to i8
  store i8 %202, i8* %18, align 1
  %203 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %17, align 8
  %204 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %203, i32 0, i32 1
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  store i8* %207, i8** %25, align 8
  %208 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %20, i32 0, i32 0
  store i32 3, i32* %208, align 8
  br label %222

209:                                              ; preds = %190
  %210 = load i8, i8* @ACPI_SMBUS_PRTCL_WRITE, align 1
  %211 = zext i8 %210 to i32
  %212 = load i8, i8* %18, align 1
  %213 = zext i8 %212 to i32
  %214 = or i32 %213, %211
  %215 = trunc i32 %214 to i8
  store i8 %215, i8* %18, align 1
  %216 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %17, align 8
  %217 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %216, i32 0, i32 1
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 1
  %220 = load i8*, i8** %219, align 8
  store i8* %220, i8** %25, align 8
  %221 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %20, i32 0, i32 0
  store i32 5, i32* %221, align 8
  br label %222

222:                                              ; preds = %209, %196
  %223 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 0
  %224 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %20, i32 0, i32 1
  store %union.acpi_object* %223, %union.acpi_object** %224, align 8
  %225 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %226 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 0
  %227 = bitcast %union.acpi_object* %226 to i64*
  store i64 %225, i64* %227, align 16
  %228 = load i8, i8* %18, align 1
  %229 = zext i8 %228 to i32
  %230 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 0
  %231 = bitcast %union.acpi_object* %230 to %struct.TYPE_6__*
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  store i32 %229, i32* %232, align 16
  %233 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %234 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 1
  %235 = bitcast %union.acpi_object* %234 to i64*
  store i64 %233, i64* %235, align 8
  %236 = load i8, i8* %10, align 1
  %237 = zext i8 %236 to i32
  %238 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 1
  %239 = bitcast %union.acpi_object* %238 to %struct.TYPE_6__*
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 0
  store i32 %237, i32* %240, align 8
  %241 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %242 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 2
  %243 = bitcast %union.acpi_object* %242 to i64*
  store i64 %241, i64* %243, align 16
  %244 = load i8, i8* %13, align 1
  %245 = zext i8 %244 to i32
  %246 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %21, i64 0, i64 2
  %247 = bitcast %union.acpi_object* %246 to %struct.TYPE_6__*
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  store i32 %245, i32* %248, align 16
  %249 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %17, align 8
  %250 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i8*, i8** %25, align 8
  %253 = call i32 @acpi_evaluate_object(i32 %251, i8* %252, %struct.acpi_object_list* %20, %struct.acpi_buffer* %22)
  store i32 %253, i32* %19, align 4
  %254 = load i32, i32* %19, align 4
  %255 = call i64 @ACPI_FAILURE(i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %266

257:                                              ; preds = %222
  %258 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %17, align 8
  %259 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i8*, i8** %25, align 8
  %262 = load i32, i32* %19, align 4
  %263 = call i32 (i32, i8*, ...) @acpi_handle_err(i32 %260, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %261, i32 %262)
  %264 = load i32, i32* @EIO, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %8, align 4
  br label %450

266:                                              ; preds = %222
  %267 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %22, i32 0, i32 0
  %268 = load %union.acpi_object*, %union.acpi_object** %267, align 8
  store %union.acpi_object* %268, %union.acpi_object** %24, align 8
  %269 = load %union.acpi_object*, %union.acpi_object** %24, align 8
  %270 = icmp ne %union.acpi_object* %269, null
  br i1 %270, label %271, label %282

271:                                              ; preds = %266
  %272 = load %union.acpi_object*, %union.acpi_object** %24, align 8
  %273 = bitcast %union.acpi_object* %272 to i64*
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %282

277:                                              ; preds = %271
  %278 = load %union.acpi_object*, %union.acpi_object** %24, align 8
  %279 = bitcast %union.acpi_object* %278 to %struct.TYPE_5__*
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 0
  %281 = load %union.acpi_object*, %union.acpi_object** %280, align 8
  store %union.acpi_object* %281, %union.acpi_object** %23, align 8
  br label %289

282:                                              ; preds = %271, %266
  %283 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %17, align 8
  %284 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = call i32 (i32, i8*, ...) @acpi_handle_err(i32 %285, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %287 = load i32, i32* @EIO, align 4
  %288 = sub nsw i32 0, %287
  store i32 %288, i32* %16, align 4
  br label %441

289:                                              ; preds = %277
  %290 = load %union.acpi_object*, %union.acpi_object** %23, align 8
  %291 = icmp eq %union.acpi_object* %290, null
  br i1 %291, label %298, label %292

292:                                              ; preds = %289
  %293 = load %union.acpi_object*, %union.acpi_object** %23, align 8
  %294 = bitcast %union.acpi_object* %293 to i64*
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %297 = icmp ne i64 %295, %296
  br i1 %297, label %298, label %305

298:                                              ; preds = %292, %289
  %299 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %17, align 8
  %300 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = call i32 (i32, i8*, ...) @acpi_handle_err(i32 %301, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %303 = load i32, i32* @EIO, align 4
  %304 = sub nsw i32 0, %303
  store i32 %304, i32* %16, align 4
  br label %441

305:                                              ; preds = %292
  %306 = load %union.acpi_object*, %union.acpi_object** %23, align 8
  %307 = bitcast %union.acpi_object* %306 to %struct.TYPE_6__*
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  store i32 %309, i32* %16, align 4
  %310 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %17, align 8
  %311 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load i8*, i8** %25, align 8
  %314 = load i32, i32* %16, align 4
  %315 = call i32 @acpi_handle_debug(i32 %312, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %313, i32 %314)
  %316 = load i32, i32* %16, align 4
  switch i32 %316, label %327 [
    i32 134, label %317
    i32 136, label %318
    i32 133, label %321
    i32 135, label %324
  ]

317:                                              ; preds = %305
  store i32 0, i32* %16, align 4
  br label %330

318:                                              ; preds = %305
  %319 = load i32, i32* @EBUSY, align 4
  %320 = sub nsw i32 0, %319
  store i32 %320, i32* %16, align 4
  br label %441

321:                                              ; preds = %305
  %322 = load i32, i32* @ETIMEDOUT, align 4
  %323 = sub nsw i32 0, %322
  store i32 %323, i32* %16, align 4
  br label %441

324:                                              ; preds = %305
  %325 = load i32, i32* @ENXIO, align 4
  %326 = sub nsw i32 0, %325
  store i32 %326, i32* %16, align 4
  br label %441

327:                                              ; preds = %305
  %328 = load i32, i32* @EIO, align 4
  %329 = sub nsw i32 0, %328
  store i32 %329, i32* %16, align 4
  br label %441

330:                                              ; preds = %317
  %331 = load i8, i8* %12, align 1
  %332 = sext i8 %331 to i32
  %333 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %334 = sext i8 %333 to i32
  %335 = icmp eq i32 %332, %334
  br i1 %335, label %339, label %336

336:                                              ; preds = %330
  %337 = load i32, i32* %14, align 4
  %338 = icmp eq i32 %337, 129
  br i1 %338, label %339, label %340

339:                                              ; preds = %336, %330
  br label %441

340:                                              ; preds = %336
  %341 = load %union.acpi_object*, %union.acpi_object** %24, align 8
  %342 = bitcast %union.acpi_object* %341 to %struct.TYPE_5__*
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 0
  %344 = load %union.acpi_object*, %union.acpi_object** %343, align 8
  %345 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %344, i64 1
  store %union.acpi_object* %345, %union.acpi_object** %23, align 8
  %346 = load %union.acpi_object*, %union.acpi_object** %23, align 8
  %347 = bitcast %union.acpi_object* %346 to i64*
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %350 = icmp ne i64 %348, %349
  br i1 %350, label %351, label %358

351:                                              ; preds = %340
  %352 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %17, align 8
  %353 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = call i32 (i32, i8*, ...) @acpi_handle_err(i32 %354, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %356 = load i32, i32* @EIO, align 4
  %357 = sub nsw i32 0, %356
  store i32 %357, i32* %16, align 4
  br label %441

358:                                              ; preds = %340
  %359 = load %union.acpi_object*, %union.acpi_object** %23, align 8
  %360 = bitcast %union.acpi_object* %359 to %struct.TYPE_6__*
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  store i32 %362, i32* %26, align 4
  %363 = load %union.acpi_object*, %union.acpi_object** %24, align 8
  %364 = bitcast %union.acpi_object* %363 to %struct.TYPE_5__*
  %365 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %364, i32 0, i32 0
  %366 = load %union.acpi_object*, %union.acpi_object** %365, align 8
  %367 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %366, i64 2
  store %union.acpi_object* %367, %union.acpi_object** %23, align 8
  %368 = load i32, i32* %14, align 4
  switch i32 %368, label %440 [
    i32 131, label %369
    i32 130, label %369
    i32 128, label %369
    i32 132, label %400
  ]

369:                                              ; preds = %358, %358, %358
  %370 = load %union.acpi_object*, %union.acpi_object** %23, align 8
  %371 = bitcast %union.acpi_object* %370 to i64*
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %374 = icmp ne i64 %372, %373
  br i1 %374, label %375, label %382

375:                                              ; preds = %369
  %376 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %17, align 8
  %377 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = call i32 (i32, i8*, ...) @acpi_handle_err(i32 %378, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %380 = load i32, i32* @EIO, align 4
  %381 = sub nsw i32 0, %380
  store i32 %381, i32* %16, align 4
  br label %441

382:                                              ; preds = %369
  %383 = load i32, i32* %26, align 4
  %384 = icmp eq i32 %383, 2
  br i1 %384, label %385, label %392

385:                                              ; preds = %382
  %386 = load %union.acpi_object*, %union.acpi_object** %23, align 8
  %387 = bitcast %union.acpi_object* %386 to %struct.TYPE_6__*
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %391 = bitcast %union.i2c_smbus_data* %390 to i32*
  store i32 %389, i32* %391, align 8
  br label %399

392:                                              ; preds = %382
  %393 = load %union.acpi_object*, %union.acpi_object** %23, align 8
  %394 = bitcast %union.acpi_object* %393 to %struct.TYPE_6__*
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %398 = bitcast %union.i2c_smbus_data* %397 to i32*
  store i32 %396, i32* %398, align 8
  br label %399

399:                                              ; preds = %392, %385
  br label %440

400:                                              ; preds = %358
  %401 = load %union.acpi_object*, %union.acpi_object** %23, align 8
  %402 = bitcast %union.acpi_object* %401 to i64*
  %403 = load i64, i64* %402, align 8
  %404 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %405 = icmp ne i64 %403, %404
  br i1 %405, label %406, label %413

406:                                              ; preds = %400
  %407 = load %struct.acpi_smbus_cmi*, %struct.acpi_smbus_cmi** %17, align 8
  %408 = getelementptr inbounds %struct.acpi_smbus_cmi, %struct.acpi_smbus_cmi* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = call i32 (i32, i8*, ...) @acpi_handle_err(i32 %409, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %411 = load i32, i32* @EIO, align 4
  %412 = sub nsw i32 0, %411
  store i32 %412, i32* %16, align 4
  br label %441

413:                                              ; preds = %400
  %414 = load i32, i32* %26, align 4
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %420, label %416

416:                                              ; preds = %413
  %417 = load i32, i32* %26, align 4
  %418 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %419 = icmp sgt i32 %417, %418
  br i1 %419, label %420, label %423

420:                                              ; preds = %416, %413
  %421 = load i32, i32* @EPROTO, align 4
  %422 = sub nsw i32 0, %421
  store i32 %422, i32* %8, align 4
  br label %450

423:                                              ; preds = %416
  %424 = load i32, i32* %26, align 4
  %425 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %426 = bitcast %union.i2c_smbus_data* %425 to i32**
  %427 = load i32*, i32** %426, align 8
  %428 = getelementptr inbounds i32, i32* %427, i64 0
  store i32 %424, i32* %428, align 4
  %429 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %430 = bitcast %union.i2c_smbus_data* %429 to i32**
  %431 = load i32*, i32** %430, align 8
  %432 = getelementptr inbounds i32, i32* %431, i64 1
  %433 = ptrtoint i32* %432 to i32
  %434 = load %union.acpi_object*, %union.acpi_object** %23, align 8
  %435 = bitcast %union.acpi_object* %434 to %struct.TYPE_7__*
  %436 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = load i32, i32* %26, align 4
  %439 = call i32 @memcpy(i32 %433, i32 %437, i32 %438)
  br label %440

440:                                              ; preds = %358, %423, %399
  br label %441

441:                                              ; preds = %440, %406, %375, %351, %339, %327, %324, %321, %318, %298, %282
  %442 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %22, i32 0, i32 0
  %443 = load %union.acpi_object*, %union.acpi_object** %442, align 8
  %444 = call i32 @kfree(%union.acpi_object* %443)
  %445 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %446 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %445, i32 0, i32 0
  %447 = load i32, i32* %16, align 4
  %448 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %446, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %447)
  %449 = load i32, i32* %16, align 4
  store i32 %449, i32* %8, align 4
  br label %450

450:                                              ; preds = %441, %420, %257, %183, %156
  %451 = load i32, i32* %8, align 4
  ret i32 %451
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @acpi_evaluate_object(i32, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_handle_err(i32, i8*, ...) #1

declare dso_local i32 @acpi_handle_debug(i32, i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
