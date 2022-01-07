; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_sysfs.c_add_port_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_sysfs.c_add_port_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i8*, %struct.mlx4_ib_iov_port*, i32 }
%struct.mlx4_ib_iov_port = type { i32, %struct.TYPE_4__*, i8*, i8*, i8*, i8*, i8*, %struct.mlx4_ib_dev* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ib_port_attr = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"admin_guids\00", align 1
@show_admin_alias_guid = common dso_local global i32 0, align 4
@store_admin_alias_guid = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"gids\00", align 1
@show_port_gid = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"pkeys\00", align 1
@show_phys_port_pkey = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"mcgs\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"add_port_entries FAILED: for port:%d, error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, i32)* @add_port_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_port_entries(%struct.mlx4_ib_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_ib_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [11 x i8], align 1
  %8 = alloca %struct.mlx4_ib_iov_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_port_attr, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mlx4_ib_iov_port* null, %struct.mlx4_ib_iov_port** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = call i32 @memset(%struct.ib_port_attr* %10, i32 0, i32 8)
  %12 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %13 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @__mlx4_ib_query_port(i32* %13, i32 %14, %struct.ib_port_attr* %10, i32 1)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %313

19:                                               ; preds = %2
  %20 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %21 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %20, i32 0, i32 1
  %22 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %22, i64 %25
  store %struct.mlx4_ib_iov_port* %26, %struct.mlx4_ib_iov_port** %8, align 8
  %27 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %28 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %29 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %28, i32 0, i32 7
  store %struct.mlx4_ib_dev* %27, %struct.mlx4_ib_dev** %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %32 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.TYPE_4__* @kzalloc(i32 4, i32 %33)
  %35 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %36 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %35, i32 0, i32 1
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %36, align 8
  %37 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %38 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %19
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  br label %313

44:                                               ; preds = %19
  %45 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %49 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %50 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @kobject_get(i8* %51)
  %53 = call i8* @kobject_create_and_add(i8* %48, i32 %52)
  %54 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %55 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %57 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %44
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %9, align 4
  br label %304

63:                                               ; preds = %44
  %64 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %65 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @kobject_get(i8* %66)
  %68 = call i8* @kobject_create_and_add(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %70 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %72 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %63
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %9, align 4
  br label %295

78:                                               ; preds = %63
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %118, %78
  %80 = load i32, i32* %6, align 4
  %81 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %10, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %121

84:                                               ; preds = %79
  %85 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @sprintf(i8* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %90 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i32 %88, i32* %97, align 4
  %98 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %99 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %100 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %105
  %107 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %108 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %109 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %108, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* @show_admin_alias_guid, align 4
  %112 = load i32*, i32** @store_admin_alias_guid, align 8
  %113 = call i32 @create_sysfs_entry(%struct.mlx4_ib_iov_port* %98, %struct.TYPE_5__* %106, i8* %107, i8* %110, i32 %111, i32* %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %84
  br label %290

117:                                              ; preds = %84
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %79

121:                                              ; preds = %79
  %122 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %123 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @kobject_get(i8* %124)
  %126 = call i8* @kobject_create_and_add(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  %127 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %128 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %127, i32 0, i32 4
  store i8* %126, i8** %128, align 8
  %129 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %130 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %129, i32 0, i32 4
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %121
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %9, align 4
  br label %285

136:                                              ; preds = %121
  store i32 0, i32* %6, align 4
  br label %137

137:                                              ; preds = %181, %136
  %138 = load i32, i32* %6, align 4
  %139 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %10, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %138, %140
  br i1 %141, label %142, label %184

142:                                              ; preds = %137
  %143 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @sprintf(i8* %143, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %148 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %147, i32 0, i32 1
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %10, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  store i32 %146, i32* %158, align 4
  %159 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %160 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %161 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %160, i32 0, i32 1
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %10, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %166, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i64 %169
  %171 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %172 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %173 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %172, i32 0, i32 4
  %174 = load i8*, i8** %173, align 8
  %175 = load i32, i32* @show_port_gid, align 4
  %176 = call i32 @create_sysfs_entry(%struct.mlx4_ib_iov_port* %159, %struct.TYPE_5__* %170, i8* %171, i8* %174, i32 %175, i32* null)
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %142
  br label %280

180:                                              ; preds = %142
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %6, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %6, align 4
  br label %137

184:                                              ; preds = %137
  %185 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %186 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %185, i32 0, i32 2
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @kobject_get(i8* %187)
  %189 = call i8* @kobject_create_and_add(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %188)
  %190 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %191 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %190, i32 0, i32 5
  store i8* %189, i8** %191, align 8
  %192 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %193 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %192, i32 0, i32 5
  %194 = load i8*, i8** %193, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %199, label %196

196:                                              ; preds = %184
  %197 = load i32, i32* @ENOMEM, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %9, align 4
  br label %275

199:                                              ; preds = %184
  store i32 0, i32* %6, align 4
  br label %200

200:                                              ; preds = %246, %199
  %201 = load i32, i32* %6, align 4
  %202 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %10, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = icmp slt i32 %201, %203
  br i1 %204, label %205, label %249

205:                                              ; preds = %200
  %206 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %207 = load i32, i32* %6, align 4
  %208 = call i32 @sprintf(i8* %206, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %207)
  %209 = load i32, i32* %6, align 4
  %210 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %211 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %210, i32 0, i32 1
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %213, align 8
  %215 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %10, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = mul nsw i32 2, %216
  %218 = load i32, i32* %6, align 4
  %219 = add nsw i32 %217, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 0
  store i32 %209, i32* %222, align 4
  %223 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %224 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %225 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %224, i32 0, i32 1
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %227, align 8
  %229 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %10, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = mul nsw i32 2, %230
  %232 = load i32, i32* %6, align 4
  %233 = add nsw i32 %231, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i64 %234
  %236 = getelementptr inbounds [11 x i8], [11 x i8]* %7, i64 0, i64 0
  %237 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %238 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %237, i32 0, i32 5
  %239 = load i8*, i8** %238, align 8
  %240 = load i32, i32* @show_phys_port_pkey, align 4
  %241 = call i32 @create_sysfs_entry(%struct.mlx4_ib_iov_port* %223, %struct.TYPE_5__* %235, i8* %236, i8* %239, i32 %240, i32* null)
  store i32 %241, i32* %9, align 4
  %242 = load i32, i32* %9, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %205
  br label %270

245:                                              ; preds = %205
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %6, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %6, align 4
  br label %200

249:                                              ; preds = %200
  %250 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %251 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %250, i32 0, i32 2
  %252 = load i8*, i8** %251, align 8
  %253 = call i32 @kobject_get(i8* %252)
  %254 = call i8* @kobject_create_and_add(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %253)
  %255 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %256 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %255, i32 0, i32 6
  store i8* %254, i8** %256, align 8
  %257 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %258 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %257, i32 0, i32 6
  %259 = load i8*, i8** %258, align 8
  %260 = icmp ne i8* %259, null
  br i1 %260, label %264, label %261

261:                                              ; preds = %249
  %262 = load i32, i32* @ENOMEM, align 4
  %263 = sub nsw i32 0, %262
  store i32 %263, i32* %9, align 4
  br label %265

264:                                              ; preds = %249
  store i32 0, i32* %3, align 4
  br label %318

265:                                              ; preds = %261
  %266 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %267 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %266, i32 0, i32 2
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 @kobject_put(i8* %268)
  br label %270

270:                                              ; preds = %265, %244
  %271 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %272 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %271, i32 0, i32 5
  %273 = load i8*, i8** %272, align 8
  %274 = call i32 @kobject_put(i8* %273)
  br label %275

275:                                              ; preds = %270, %196
  %276 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %277 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %276, i32 0, i32 2
  %278 = load i8*, i8** %277, align 8
  %279 = call i32 @kobject_put(i8* %278)
  br label %280

280:                                              ; preds = %275, %179
  %281 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %282 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %281, i32 0, i32 4
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 @kobject_put(i8* %283)
  br label %285

285:                                              ; preds = %280, %133
  %286 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %287 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %286, i32 0, i32 2
  %288 = load i8*, i8** %287, align 8
  %289 = call i32 @kobject_put(i8* %288)
  br label %290

290:                                              ; preds = %285, %116
  %291 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %292 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %291, i32 0, i32 3
  %293 = load i8*, i8** %292, align 8
  %294 = call i32 @kobject_put(i8* %293)
  br label %295

295:                                              ; preds = %290, %75
  %296 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %297 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %296, i32 0, i32 2
  %298 = load i8*, i8** %297, align 8
  %299 = call i32 @kobject_put(i8* %298)
  %300 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %301 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %300, i32 0, i32 2
  %302 = load i8*, i8** %301, align 8
  %303 = call i32 @kobject_put(i8* %302)
  br label %304

304:                                              ; preds = %295, %60
  %305 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %4, align 8
  %306 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %305, i32 0, i32 0
  %307 = load i8*, i8** %306, align 8
  %308 = call i32 @kobject_put(i8* %307)
  %309 = load %struct.mlx4_ib_iov_port*, %struct.mlx4_ib_iov_port** %8, align 8
  %310 = getelementptr inbounds %struct.mlx4_ib_iov_port, %struct.mlx4_ib_iov_port* %309, i32 0, i32 1
  %311 = load %struct.TYPE_4__*, %struct.TYPE_4__** %310, align 8
  %312 = call i32 @kfree(%struct.TYPE_4__* %311)
  br label %313

313:                                              ; preds = %304, %41, %18
  %314 = load i32, i32* %5, align 4
  %315 = load i32, i32* %9, align 4
  %316 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %314, i32 %315)
  %317 = load i32, i32* %9, align 4
  store i32 %317, i32* %3, align 4
  br label %318

318:                                              ; preds = %313, %264
  %319 = load i32, i32* %3, align 4
  ret i32 %319
}

declare dso_local i32 @memset(%struct.ib_port_attr*, i32, i32) #1

declare dso_local i32 @__mlx4_ib_query_port(i32*, i32, %struct.ib_port_attr*, i32) #1

declare dso_local %struct.TYPE_4__* @kzalloc(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @kobject_create_and_add(i8*, i32) #1

declare dso_local i32 @kobject_get(i8*) #1

declare dso_local i32 @create_sysfs_entry(%struct.mlx4_ib_iov_port*, %struct.TYPE_5__*, i8*, i8*, i32, i32*) #1

declare dso_local i32 @kobject_put(i8*) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
