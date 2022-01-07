; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_mob.c_vmw_otable_batch_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_mob.c_vmw_otable_batch_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (i32, %struct.ttm_operation_ctx*)* }
%struct.ttm_operation_ctx = type { i32, i32 }
%struct.vmw_private = type { i32 }
%struct.vmw_otable_batch = type { i64, %struct.TYPE_8__*, %struct.vmw_otable* }
%struct.TYPE_8__ = type { i32 }
%struct.vmw_otable = type { i32, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@ttm_bo_type_device = common dso_local global i32 0, align 4
@vmw_sys_ne_placement = common dso_local global i32 0, align 4
@vmw_bo_driver = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.vmw_otable_batch*)* @vmw_otable_batch_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_otable_batch_setup(%struct.vmw_private* %0, %struct.vmw_otable_batch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmw_private*, align 8
  %5 = alloca %struct.vmw_otable_batch*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vmw_otable*, align 8
  %9 = alloca %struct.ttm_operation_ctx, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %4, align 8
  store %struct.vmw_otable_batch* %1, %struct.vmw_otable_batch** %5, align 8
  %12 = load %struct.vmw_otable_batch*, %struct.vmw_otable_batch** %5, align 8
  %13 = getelementptr inbounds %struct.vmw_otable_batch, %struct.vmw_otable_batch* %12, i32 0, i32 2
  %14 = load %struct.vmw_otable*, %struct.vmw_otable** %13, align 8
  store %struct.vmw_otable* %14, %struct.vmw_otable** %8, align 8
  %15 = bitcast %struct.ttm_operation_ctx* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  store i64 0, i64* %7, align 8
  store i64 0, i64* %10, align 8
  br label %16

16:                                               ; preds = %53, %2
  %17 = load i64, i64* %10, align 8
  %18 = load %struct.vmw_otable_batch*, %struct.vmw_otable_batch** %5, align 8
  %19 = getelementptr inbounds %struct.vmw_otable_batch, %struct.vmw_otable_batch* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %16
  %23 = load %struct.vmw_otable*, %struct.vmw_otable** %8, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds %struct.vmw_otable, %struct.vmw_otable* %23, i64 %24
  %26 = getelementptr inbounds %struct.vmw_otable, %struct.vmw_otable* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %53

30:                                               ; preds = %22
  %31 = load %struct.vmw_otable*, %struct.vmw_otable** %8, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds %struct.vmw_otable, %struct.vmw_otable* %31, i64 %32
  %34 = getelementptr inbounds %struct.vmw_otable, %struct.vmw_otable* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = add nsw i32 %35, %36
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* @PAGE_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load %struct.vmw_otable*, %struct.vmw_otable** %8, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds %struct.vmw_otable, %struct.vmw_otable* %41, i64 %42
  %44 = getelementptr inbounds %struct.vmw_otable, %struct.vmw_otable* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 8
  %45 = load %struct.vmw_otable*, %struct.vmw_otable** %8, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds %struct.vmw_otable, %struct.vmw_otable* %45, i64 %46
  %48 = getelementptr inbounds %struct.vmw_otable, %struct.vmw_otable* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %7, align 8
  br label %53

53:                                               ; preds = %30, %29
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %10, align 8
  br label %16

56:                                               ; preds = %16
  %57 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %58 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %57, i32 0, i32 0
  %59 = load i64, i64* %7, align 8
  %60 = load i32, i32* @ttm_bo_type_device, align 4
  %61 = load %struct.vmw_otable_batch*, %struct.vmw_otable_batch** %5, align 8
  %62 = getelementptr inbounds %struct.vmw_otable_batch, %struct.vmw_otable_batch* %61, i32 0, i32 1
  %63 = call i32 @ttm_bo_create(i32* %58, i64 %59, i32 %60, i32* @vmw_sys_ne_placement, i32 0, i32 0, %struct.TYPE_8__** %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  br label %195

70:                                               ; preds = %56
  %71 = load %struct.vmw_otable_batch*, %struct.vmw_otable_batch** %5, align 8
  %72 = getelementptr inbounds %struct.vmw_otable_batch, %struct.vmw_otable_batch* %71, i32 0, i32 1
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = call i32 @ttm_bo_reserve(%struct.TYPE_8__* %73, i32 0, i32 1, i32* null)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @BUG_ON(i32 %77)
  %79 = load i32 (i32, %struct.ttm_operation_ctx*)*, i32 (i32, %struct.ttm_operation_ctx*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @vmw_bo_driver, i32 0, i32 0), align 8
  %80 = load %struct.vmw_otable_batch*, %struct.vmw_otable_batch** %5, align 8
  %81 = getelementptr inbounds %struct.vmw_otable_batch, %struct.vmw_otable_batch* %80, i32 0, i32 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 %79(i32 %84, %struct.ttm_operation_ctx* %9)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %70
  br label %154

92:                                               ; preds = %70
  %93 = load %struct.vmw_otable_batch*, %struct.vmw_otable_batch** %5, align 8
  %94 = getelementptr inbounds %struct.vmw_otable_batch, %struct.vmw_otable_batch* %93, i32 0, i32 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = call i32 @vmw_bo_map_dma(%struct.TYPE_8__* %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  br label %154

103:                                              ; preds = %92
  %104 = load %struct.vmw_otable_batch*, %struct.vmw_otable_batch** %5, align 8
  %105 = getelementptr inbounds %struct.vmw_otable_batch, %struct.vmw_otable_batch* %104, i32 0, i32 1
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = call i32 @ttm_bo_unreserve(%struct.TYPE_8__* %106)
  store i64 0, i64* %6, align 8
  store i64 0, i64* %10, align 8
  br label %108

108:                                              ; preds = %150, %103
  %109 = load i64, i64* %10, align 8
  %110 = load %struct.vmw_otable_batch*, %struct.vmw_otable_batch** %5, align 8
  %111 = getelementptr inbounds %struct.vmw_otable_batch, %struct.vmw_otable_batch* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ult i64 %109, %112
  br i1 %113, label %114, label %153

114:                                              ; preds = %108
  %115 = load %struct.vmw_otable_batch*, %struct.vmw_otable_batch** %5, align 8
  %116 = getelementptr inbounds %struct.vmw_otable_batch, %struct.vmw_otable_batch* %115, i32 0, i32 2
  %117 = load %struct.vmw_otable*, %struct.vmw_otable** %116, align 8
  %118 = load i64, i64* %10, align 8
  %119 = getelementptr inbounds %struct.vmw_otable, %struct.vmw_otable* %117, i64 %118
  %120 = getelementptr inbounds %struct.vmw_otable, %struct.vmw_otable* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %114
  br label %150

124:                                              ; preds = %114
  %125 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %126 = load i64, i64* %10, align 8
  %127 = load %struct.vmw_otable_batch*, %struct.vmw_otable_batch** %5, align 8
  %128 = getelementptr inbounds %struct.vmw_otable_batch, %struct.vmw_otable_batch* %127, i32 0, i32 1
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = load i64, i64* %6, align 8
  %131 = load %struct.vmw_otable*, %struct.vmw_otable** %8, align 8
  %132 = load i64, i64* %10, align 8
  %133 = getelementptr inbounds %struct.vmw_otable, %struct.vmw_otable* %131, i64 %132
  %134 = call i32 @vmw_setup_otable_base(%struct.vmw_private* %125, i64 %126, %struct.TYPE_8__* %129, i64 %130, %struct.vmw_otable* %133)
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i32
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %124
  br label %159

141:                                              ; preds = %124
  %142 = load %struct.vmw_otable*, %struct.vmw_otable** %8, align 8
  %143 = load i64, i64* %10, align 8
  %144 = getelementptr inbounds %struct.vmw_otable, %struct.vmw_otable* %142, i64 %143
  %145 = getelementptr inbounds %struct.vmw_otable, %struct.vmw_otable* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = load i64, i64* %6, align 8
  %149 = add i64 %148, %147
  store i64 %149, i64* %6, align 8
  br label %150

150:                                              ; preds = %141, %123
  %151 = load i64, i64* %10, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %10, align 8
  br label %108

153:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %197

154:                                              ; preds = %102, %91
  %155 = load %struct.vmw_otable_batch*, %struct.vmw_otable_batch** %5, align 8
  %156 = getelementptr inbounds %struct.vmw_otable_batch, %struct.vmw_otable_batch* %155, i32 0, i32 1
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = call i32 @ttm_bo_unreserve(%struct.TYPE_8__* %157)
  br label %159

159:                                              ; preds = %154, %140
  store i64 0, i64* %10, align 8
  br label %160

160:                                              ; preds = %185, %159
  %161 = load i64, i64* %10, align 8
  %162 = load %struct.vmw_otable_batch*, %struct.vmw_otable_batch** %5, align 8
  %163 = getelementptr inbounds %struct.vmw_otable_batch, %struct.vmw_otable_batch* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ult i64 %161, %164
  br i1 %165, label %166, label %188

166:                                              ; preds = %160
  %167 = load %struct.vmw_otable_batch*, %struct.vmw_otable_batch** %5, align 8
  %168 = getelementptr inbounds %struct.vmw_otable_batch, %struct.vmw_otable_batch* %167, i32 0, i32 2
  %169 = load %struct.vmw_otable*, %struct.vmw_otable** %168, align 8
  %170 = load i64, i64* %10, align 8
  %171 = getelementptr inbounds %struct.vmw_otable, %struct.vmw_otable* %169, i64 %170
  %172 = getelementptr inbounds %struct.vmw_otable, %struct.vmw_otable* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %166
  %176 = load %struct.vmw_private*, %struct.vmw_private** %4, align 8
  %177 = load i64, i64* %10, align 8
  %178 = load %struct.vmw_otable_batch*, %struct.vmw_otable_batch** %5, align 8
  %179 = getelementptr inbounds %struct.vmw_otable_batch, %struct.vmw_otable_batch* %178, i32 0, i32 2
  %180 = load %struct.vmw_otable*, %struct.vmw_otable** %179, align 8
  %181 = load i64, i64* %10, align 8
  %182 = getelementptr inbounds %struct.vmw_otable, %struct.vmw_otable* %180, i64 %181
  %183 = call i32 @vmw_takedown_otable_base(%struct.vmw_private* %176, i64 %177, %struct.vmw_otable* %182)
  br label %184

184:                                              ; preds = %175, %166
  br label %185

185:                                              ; preds = %184
  %186 = load i64, i64* %10, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %10, align 8
  br label %160

188:                                              ; preds = %160
  %189 = load %struct.vmw_otable_batch*, %struct.vmw_otable_batch** %5, align 8
  %190 = getelementptr inbounds %struct.vmw_otable_batch, %struct.vmw_otable_batch* %189, i32 0, i32 1
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %190, align 8
  %192 = call i32 @ttm_bo_put(%struct.TYPE_8__* %191)
  %193 = load %struct.vmw_otable_batch*, %struct.vmw_otable_batch** %5, align 8
  %194 = getelementptr inbounds %struct.vmw_otable_batch, %struct.vmw_otable_batch* %193, i32 0, i32 1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %194, align 8
  br label %195

195:                                              ; preds = %188, %69
  %196 = load i32, i32* %11, align 4
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %195, %153
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ttm_bo_create(i32*, i64, i32, i32*, i32, i32, %struct.TYPE_8__**) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @ttm_bo_reserve(%struct.TYPE_8__*, i32, i32, i32*) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @vmw_bo_map_dma(%struct.TYPE_8__*) #2

declare dso_local i32 @ttm_bo_unreserve(%struct.TYPE_8__*) #2

declare dso_local i32 @vmw_setup_otable_base(%struct.vmw_private*, i64, %struct.TYPE_8__*, i64, %struct.vmw_otable*) #2

declare dso_local i32 @vmw_takedown_otable_base(%struct.vmw_private*, i64, %struct.vmw_otable*) #2

declare dso_local i32 @ttm_bo_put(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
