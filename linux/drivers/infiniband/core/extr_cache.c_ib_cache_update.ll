; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_ib_cache_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_ib_cache_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.ib_port_attr* }
%struct.ib_port_attr = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.ib_pkey_cache = type { i32, i32, i32, i32, i32, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ib_query_port failed (%d)\0A\00", align 1
@table = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"ib_query_pkey failed (%d) for index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, i64, i32)* @ib_cache_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_cache_update(%struct.ib_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_port_attr*, align 8
  %8 = alloca %struct.ib_pkey_cache*, align 8
  %9 = alloca %struct.ib_pkey_cache*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.ib_port_attr* null, %struct.ib_port_attr** %7, align 8
  store %struct.ib_pkey_cache* null, %struct.ib_pkey_cache** %8, align 8
  %12 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @rdma_is_port_valid(%struct.ib_device* %12, i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %178

17:                                               ; preds = %3
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.ib_port_attr* @kmalloc(i32 40, i32 %18)
  store %struct.ib_port_attr* %19, %struct.ib_port_attr** %7, align 8
  %20 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %21 = icmp ne %struct.ib_port_attr* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %178

23:                                               ; preds = %17
  %24 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %27 = call i32 @ib_query_port(%struct.ib_device* %24, i64 %25, %struct.ib_port_attr* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %32 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %31, i32 0, i32 2
  %33 = load i32, i32* %11, align 4
  %34 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %172

35:                                               ; preds = %23
  %36 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @rdma_protocol_roce(%struct.ib_device* %36, i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %35
  %41 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %44 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @config_non_roce_gid_cache(%struct.ib_device* %41, i64 %42, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %172

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %35
  %52 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %8, align 8
  %53 = bitcast %struct.ib_pkey_cache* %52 to %struct.ib_port_attr*
  %54 = load i32, i32* @table, align 4
  %55 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %56 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @struct_size(%struct.ib_port_attr* %53, i32 %54, i32 %57)
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.ib_port_attr* @kmalloc(i32 %58, i32 %59)
  %61 = bitcast %struct.ib_port_attr* %60 to %struct.ib_pkey_cache*
  store %struct.ib_pkey_cache* %61, %struct.ib_pkey_cache** %8, align 8
  %62 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %8, align 8
  %63 = icmp ne %struct.ib_pkey_cache* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %51
  br label %172

65:                                               ; preds = %51
  %66 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %67 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %8, align 8
  %70 = getelementptr inbounds %struct.ib_pkey_cache, %struct.ib_pkey_cache* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %97, %65
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %8, align 8
  %74 = getelementptr inbounds %struct.ib_pkey_cache, %struct.ib_pkey_cache* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %100

77:                                               ; preds = %71
  %78 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %79 = load i64, i64* %5, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %8, align 8
  %82 = getelementptr inbounds %struct.ib_pkey_cache, %struct.ib_pkey_cache* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = call i32 @ib_query_pkey(%struct.ib_device* %78, i64 %79, i32 %80, i64 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %77
  %91 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %92 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %91, i32 0, i32 2
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 (i32*, i8*, i32, ...) @dev_warn(i32* %92, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94)
  br label %172

96:                                               ; preds = %77
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %71

100:                                              ; preds = %71
  %101 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %102 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = call i32 @write_lock_irq(i32* %103)
  %105 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %106 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %105, i32 0, i32 1
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = load i64, i64* %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 3
  %112 = load %struct.ib_port_attr*, %struct.ib_port_attr** %111, align 8
  %113 = bitcast %struct.ib_port_attr* %112 to %struct.ib_pkey_cache*
  store %struct.ib_pkey_cache* %113, %struct.ib_pkey_cache** %9, align 8
  %114 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %8, align 8
  %115 = bitcast %struct.ib_pkey_cache* %114 to %struct.ib_port_attr*
  %116 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %117 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %116, i32 0, i32 1
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = load i64, i64* %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  store %struct.ib_port_attr* %115, %struct.ib_port_attr** %122, align 8
  %123 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %124 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %127 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %126, i32 0, i32 1
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = load i64, i64* %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  store i32 %125, i32* %132, align 8
  %133 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %134 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %137 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %136, i32 0, i32 1
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = load i64, i64* %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  store i32 %135, i32* %142, align 4
  %143 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %144 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %147 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %146, i32 0, i32 1
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = load i64, i64* %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  store i32 %145, i32* %152, align 8
  %153 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %154 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = call i32 @write_unlock_irq(i32* %155)
  %157 = load i32, i32* %6, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %100
  %160 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %161 = load i64, i64* %5, align 8
  %162 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %163 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @ib_security_cache_change(%struct.ib_device* %160, i64 %161, i32 %164)
  br label %166

166:                                              ; preds = %159, %100
  %167 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %9, align 8
  %168 = bitcast %struct.ib_pkey_cache* %167 to %struct.ib_port_attr*
  %169 = call i32 @kfree(%struct.ib_port_attr* %168)
  %170 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %171 = call i32 @kfree(%struct.ib_port_attr* %170)
  br label %178

172:                                              ; preds = %90, %64, %49, %30
  %173 = load %struct.ib_pkey_cache*, %struct.ib_pkey_cache** %8, align 8
  %174 = bitcast %struct.ib_pkey_cache* %173 to %struct.ib_port_attr*
  %175 = call i32 @kfree(%struct.ib_port_attr* %174)
  %176 = load %struct.ib_port_attr*, %struct.ib_port_attr** %7, align 8
  %177 = call i32 @kfree(%struct.ib_port_attr* %176)
  br label %178

178:                                              ; preds = %172, %166, %22, %16
  ret void
}

declare dso_local i32 @rdma_is_port_valid(%struct.ib_device*, i64) #1

declare dso_local %struct.ib_port_attr* @kmalloc(i32, i32) #1

declare dso_local i32 @ib_query_port(%struct.ib_device*, i64, %struct.ib_port_attr*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, ...) #1

declare dso_local i32 @rdma_protocol_roce(%struct.ib_device*, i64) #1

declare dso_local i32 @config_non_roce_gid_cache(%struct.ib_device*, i64, i32) #1

declare dso_local i32 @struct_size(%struct.ib_port_attr*, i32, i32) #1

declare dso_local i32 @ib_query_pkey(%struct.ib_device*, i64, i32, i64) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @ib_security_cache_change(%struct.ib_device*, i64, i32) #1

declare dso_local i32 @kfree(%struct.ib_port_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
