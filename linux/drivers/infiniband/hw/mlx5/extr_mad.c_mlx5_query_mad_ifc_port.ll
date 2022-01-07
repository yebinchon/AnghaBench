; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mad.c_mlx5_query_mad_ifc_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mad.c_mlx5_query_mad_ifc_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i8*, i8* }
%struct.mlx5_ib_dev = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ib_smp = type { i32*, i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_SMP_ATTR_PORT_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"err %d\0A\00", align 1
@log_max_msg = common dso_local global i32 0, align 4
@IB_PORT_CAP_MASK2_SUP = common dso_local global i32 0, align 4
@IB_PORT_LINK_WIDTH_2X_SUP = common dso_local global i32 0, align 4
@IB_PORT_EXTENDED_SPEEDS_SUP = common dso_local global i32 0, align 4
@IB_PORT_LINK_SPEED_HDR_SUP = common dso_local global i32 0, align 4
@IB_SPEED_HDR = common dso_local global i32 0, align 4
@MLX_EXT_PORT_CAP_FLAG_EXTENDED_PORT_INFO = common dso_local global i32 0, align 4
@MLX5_ATTR_EXTENDED_PORT_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_query_mad_ifc_port(%struct.ib_device* %0, i32 %1, %struct.ib_port_attr* %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_port_attr*, align 8
  %7 = alloca %struct.mlx5_ib_dev*, align 8
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca %struct.ib_smp*, align 8
  %10 = alloca %struct.ib_smp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_port_attr* %2, %struct.ib_port_attr** %6, align 8
  %13 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %14 = call %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device* %13)
  store %struct.mlx5_ib_dev* %14, %struct.mlx5_ib_dev** %7, align 8
  %15 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %16 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %15, i32 0, i32 0
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %16, align 8
  store %struct.mlx5_core_dev* %17, %struct.mlx5_core_dev** %8, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %9, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %10, align 8
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.ib_smp* @kzalloc(i32 24, i32 %20)
  store %struct.ib_smp* %21, %struct.ib_smp** %9, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.ib_smp* @kmalloc(i32 24, i32 %22)
  store %struct.ib_smp* %23, %struct.ib_smp** %10, align 8
  %24 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %25 = icmp ne %struct.ib_smp* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %28 = icmp ne %struct.ib_smp* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26, %3
  br label %321

30:                                               ; preds = %26
  %31 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %32 = call i32 @init_query_mad(%struct.ib_smp* %31)
  %33 = load i32, i32* @IB_SMP_ATTR_PORT_INFO, align 4
  %34 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %35 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i8* @cpu_to_be32(i32 %36)
  %38 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %39 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %43 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %44 = call i32 @mlx5_MAD_IFC(%struct.mlx5_ib_dev* %40, i32 1, i32 1, i32 %41, i32* null, i32* null, %struct.ib_smp* %42, %struct.ib_smp* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %30
  %48 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %321

51:                                               ; preds = %30
  %52 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %53 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 16
  %56 = call i8* @be16_to_cpup(i32* %55)
  %57 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %58 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %57, i32 0, i32 19
  store i8* %56, i8** %58, align 8
  %59 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %60 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 34
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 7
  %65 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %66 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %68 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 18
  %71 = call i8* @be16_to_cpup(i32* %70)
  %72 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %73 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %72, i32 0, i32 18
  store i8* %71, i8** %73, align 8
  %74 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %75 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 36
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 15
  %80 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %81 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %83 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 32
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 15
  %88 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %89 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %91 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 33
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 4
  %96 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %97 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %99 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 20
  %102 = call i32 @be32_to_cpup(i32* %101)
  %103 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %104 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 8
  %105 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %106 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 50
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %111 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 4
  %112 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %113 = load i32, i32* @log_max_msg, align 4
  %114 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %112, i32 %113)
  %115 = shl i32 1, %114
  %116 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %117 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 8
  %118 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %119 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %128 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %127, i32 0, i32 17
  store i32 %126, i32* %128, align 8
  %129 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %130 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 46
  %133 = call i8* @be16_to_cpup(i32* %132)
  %134 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %135 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %134, i32 0, i32 16
  store i8* %133, i8** %135, align 8
  %136 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %137 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 48
  %140 = call i8* @be16_to_cpup(i32* %139)
  %141 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %142 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %141, i32 0, i32 15
  store i8* %140, i8** %142, align 8
  %143 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %144 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 31
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 15
  %149 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %150 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %149, i32 0, i32 7
  store i32 %148, i32* %150, align 4
  %151 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %152 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 35
  %155 = load i32, i32* %154, align 4
  %156 = ashr i32 %155, 4
  %157 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %158 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %157, i32 0, i32 8
  store i32 %156, i32* %158, align 8
  %159 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %160 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 41
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, 15
  %165 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %166 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %165, i32 0, i32 9
  store i32 %164, i32* %166, align 4
  %167 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %168 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 36
  %171 = load i32, i32* %170, align 4
  %172 = ashr i32 %171, 4
  %173 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %174 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %173, i32 0, i32 10
  store i32 %172, i32* %174, align 8
  %175 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %176 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 51
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %179, 31
  %181 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %182 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %181, i32 0, i32 11
  store i32 %180, i32* %182, align 4
  %183 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %184 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 37
  %187 = load i32, i32* %186, align 4
  %188 = ashr i32 %187, 4
  %189 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %190 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %189, i32 0, i32 12
  store i32 %188, i32* %190, align 8
  %191 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %192 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 41
  %195 = load i32, i32* %194, align 4
  %196 = ashr i32 %195, 4
  %197 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %198 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %197, i32 0, i32 13
  store i32 %196, i32* %198, align 4
  %199 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %200 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @IB_PORT_CAP_MASK2_SUP, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %230

205:                                              ; preds = %51
  %206 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %207 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 60
  %210 = call i8* @be16_to_cpup(i32* %209)
  %211 = ptrtoint i8* %210 to i32
  %212 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %213 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %212, i32 0, i32 14
  store i32 %211, i32* %213, align 8
  %214 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %215 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %214, i32 0, i32 14
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @IB_PORT_LINK_WIDTH_2X_SUP, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %229

220:                                              ; preds = %205
  %221 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %222 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 31
  %225 = load i32, i32* %224, align 4
  %226 = and i32 %225, 31
  %227 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %228 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %227, i32 0, i32 7
  store i32 %226, i32* %228, align 4
  br label %229

229:                                              ; preds = %220, %205
  br label %230

230:                                              ; preds = %229, %51
  %231 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %232 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @IB_PORT_EXTENDED_SPEEDS_SUP, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %271

237:                                              ; preds = %230
  %238 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %239 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %238, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 62
  %242 = load i32, i32* %241, align 4
  %243 = ashr i32 %242, 4
  store i32 %243, i32* %11, align 4
  %244 = load i32, i32* %11, align 4
  switch i32 %244, label %270 [
    i32 1, label %245
    i32 2, label %248
    i32 4, label %251
  ]

245:                                              ; preds = %237
  %246 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %247 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %246, i32 0, i32 8
  store i32 16, i32* %247, align 8
  br label %270

248:                                              ; preds = %237
  %249 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %250 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %249, i32 0, i32 8
  store i32 32, i32* %250, align 8
  br label %270

251:                                              ; preds = %237
  %252 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %253 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @IB_PORT_CAP_MASK2_SUP, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %269

258:                                              ; preds = %251
  %259 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %260 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %259, i32 0, i32 14
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @IB_PORT_LINK_SPEED_HDR_SUP, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %258
  %266 = load i32, i32* @IB_SPEED_HDR, align 4
  %267 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %268 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %267, i32 0, i32 8
  store i32 %266, i32* %268, align 8
  br label %269

269:                                              ; preds = %265, %258, %251
  br label %270

270:                                              ; preds = %237, %269, %248, %245
  br label %271

271:                                              ; preds = %270, %230
  %272 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %273 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %272, i32 0, i32 8
  %274 = load i32, i32* %273, align 8
  %275 = icmp eq i32 %274, 4
  br i1 %275, label %276, label %320

276:                                              ; preds = %271
  %277 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %278 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %277, i32 0, i32 0
  %279 = load %struct.TYPE_2__*, %struct.TYPE_2__** %278, align 8
  %280 = load i32, i32* %5, align 4
  %281 = sub nsw i32 %280, 1
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @MLX_EXT_PORT_CAP_FLAG_EXTENDED_PORT_INFO, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %319

289:                                              ; preds = %276
  %290 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %291 = call i32 @init_query_mad(%struct.ib_smp* %290)
  %292 = load i32, i32* @MLX5_ATTR_EXTENDED_PORT_INFO, align 4
  %293 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %294 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %293, i32 0, i32 2
  store i32 %292, i32* %294, align 8
  %295 = load i32, i32* %5, align 4
  %296 = call i8* @cpu_to_be32(i32 %295)
  %297 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %298 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %297, i32 0, i32 1
  store i8* %296, i8** %298, align 8
  %299 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %300 = load i32, i32* %5, align 4
  %301 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %302 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %303 = call i32 @mlx5_MAD_IFC(%struct.mlx5_ib_dev* %299, i32 1, i32 1, i32 %300, i32* null, i32* null, %struct.ib_smp* %301, %struct.ib_smp* %302)
  store i32 %303, i32* %12, align 4
  %304 = load i32, i32* %12, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %289
  br label %321

307:                                              ; preds = %289
  %308 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %309 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %308, i32 0, i32 0
  %310 = load i32*, i32** %309, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 15
  %312 = load i32, i32* %311, align 4
  %313 = and i32 %312, 1
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %307
  %316 = load %struct.ib_port_attr*, %struct.ib_port_attr** %6, align 8
  %317 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %316, i32 0, i32 8
  store i32 8, i32* %317, align 8
  br label %318

318:                                              ; preds = %315, %307
  br label %319

319:                                              ; preds = %318, %276
  br label %320

320:                                              ; preds = %319, %271
  br label %321

321:                                              ; preds = %320, %306, %47, %29
  %322 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %323 = call i32 @kfree(%struct.ib_smp* %322)
  %324 = load %struct.ib_smp*, %struct.ib_smp** %10, align 8
  %325 = call i32 @kfree(%struct.ib_smp* %324)
  %326 = load i32, i32* %12, align 4
  ret i32 %326
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local %struct.ib_smp* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_smp* @kmalloc(i32, i32) #1

declare dso_local i32 @init_query_mad(%struct.ib_smp*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @mlx5_MAD_IFC(%struct.mlx5_ib_dev*, i32, i32, i32, i32*, i32*, %struct.ib_smp*, %struct.ib_smp*) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32) #1

declare dso_local i8* @be16_to_cpup(i32*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @kfree(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
