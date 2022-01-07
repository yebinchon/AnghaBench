; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_main.c_ib_uverbs_add_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_main.c_ib_uverbs_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_10__, i32, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ib_uverbs_device = type { i32, %struct.TYPE_11__, i32, i32, %struct.TYPE_12__, i32, i32, i32, i32, i32, i32, i32, i32**, i32 }
%struct.TYPE_11__ = type { i64, i32**, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@uverbs_class = common dso_local global i32 0, align 4
@ib_uverbs_release_dev = common dso_local global i32 0, align 4
@dev_attr_group = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@uverbs_ida = common dso_local global i32 0, align 4
@IB_UVERBS_MAX_DEVICES = common dso_local global i64 0, align 8
@IB_UVERBS_NUM_FIXED_MINOR = common dso_local global i32 0, align 4
@dynamic_uverbs_dev = common dso_local global i64 0, align 8
@IB_UVERBS_BASE_DEV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"uverbs%d\00", align 1
@uverbs_mmap_fops = common dso_local global i32 0, align 4
@uverbs_fops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@uverbs_client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @ib_uverbs_add_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_uverbs_add_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.ib_uverbs_device*, align 8
  %6 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %7 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %8 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %176

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ib_uverbs_device* @kzalloc(i32 96, i32 %14)
  store %struct.ib_uverbs_device* %15, %struct.ib_uverbs_device** %5, align 8
  %16 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %17 = icmp ne %struct.ib_uverbs_device* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %176

19:                                               ; preds = %13
  %20 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %21 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %20, i32 0, i32 13
  %22 = call i32 @init_srcu_struct(i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %27 = call i32 @kfree(%struct.ib_uverbs_device* %26)
  br label %176

28:                                               ; preds = %19
  %29 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %30 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %29, i32 0, i32 1
  %31 = call i32 @device_initialize(%struct.TYPE_11__* %30)
  %32 = load i32, i32* @uverbs_class, align 4
  %33 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %34 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 4
  store i32 %32, i32* %35, align 8
  %36 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %37 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %41 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @ib_uverbs_release_dev, align 4
  %44 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %45 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 8
  %47 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %48 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %47, i32 0, i32 12
  %49 = load i32**, i32*** %48, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 0
  store i32* @dev_attr_group, i32** %50, align 8
  %51 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %52 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %51, i32 0, i32 12
  %53 = load i32**, i32*** %52, align 8
  %54 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %55 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  store i32** %53, i32*** %56, align 8
  %57 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %58 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %57, i32 0, i32 3
  %59 = call i32 @atomic_set(i32* %58, i32 1)
  %60 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %61 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %60, i32 0, i32 2
  %62 = call i32 @init_completion(i32* %61)
  %63 = load i32, i32* @RB_ROOT, align 4
  %64 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %65 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %64, i32 0, i32 11
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %67 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %66, i32 0, i32 10
  %68 = call i32 @mutex_init(i32* %67)
  %69 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %70 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %69, i32 0, i32 9
  %71 = call i32 @mutex_init(i32* %70)
  %72 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %73 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %72, i32 0, i32 8
  %74 = call i32 @INIT_LIST_HEAD(i32* %73)
  %75 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %76 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %75, i32 0, i32 7
  %77 = call i32 @INIT_LIST_HEAD(i32* %76)
  %78 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %79 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %82 = call i32 @rcu_assign_pointer(i32 %80, %struct.ib_device* %81)
  %83 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %84 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %87 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load i64, i64* @IB_UVERBS_MAX_DEVICES, align 8
  %89 = sub nsw i64 %88, 1
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call i32 @ida_alloc_max(i32* @uverbs_ida, i64 %89, i32 %90)
  store i32 %91, i32* %3, align 4
  %92 = load i32, i32* %3, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %28
  br label %161

95:                                               ; preds = %28
  %96 = load i32, i32* %3, align 4
  %97 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %98 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* @IB_UVERBS_NUM_FIXED_MINOR, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %95
  %103 = load i64, i64* @dynamic_uverbs_dev, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %103, %105
  %107 = load i32, i32* @IB_UVERBS_NUM_FIXED_MINOR, align 4
  %108 = sext i32 %107 to i64
  %109 = sub nsw i64 %106, %108
  store i64 %109, i64* %4, align 8
  br label %115

110:                                              ; preds = %95
  %111 = load i64, i64* @IB_UVERBS_BASE_DEV, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %111, %113
  store i64 %114, i64* %4, align 8
  br label %115

115:                                              ; preds = %110, %102
  %116 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %117 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %118 = call i64 @ib_uverbs_create_uapi(%struct.ib_device* %116, %struct.ib_uverbs_device* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %158

121:                                              ; preds = %115
  %122 = load i64, i64* %4, align 8
  %123 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %124 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  store i64 %122, i64* %125, align 8
  %126 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %127 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %126, i32 0, i32 1
  %128 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %129 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @dev_set_name(%struct.TYPE_11__* %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %130)
  %132 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %133 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %132, i32 0, i32 4
  %134 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %135 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32* @uverbs_mmap_fops, i32* @uverbs_fops
  %141 = call i32 @cdev_init(%struct.TYPE_12__* %133, i32* %140)
  %142 = load i32, i32* @THIS_MODULE, align 4
  %143 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %144 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  store i32 %142, i32* %145, align 8
  %146 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %147 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %146, i32 0, i32 4
  %148 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %149 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %148, i32 0, i32 1
  %150 = call i32 @cdev_device_add(%struct.TYPE_12__* %147, %struct.TYPE_11__* %149)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %121
  br label %158

154:                                              ; preds = %121
  %155 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %156 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %157 = call i32 @ib_set_client_data(%struct.ib_device* %155, i32* @uverbs_client, %struct.ib_uverbs_device* %156)
  br label %176

158:                                              ; preds = %153, %120
  %159 = load i32, i32* %3, align 4
  %160 = call i32 @ida_free(i32* @uverbs_ida, i32 %159)
  br label %161

161:                                              ; preds = %158, %94
  %162 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %163 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %162, i32 0, i32 3
  %164 = call i64 @atomic_dec_and_test(i32* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %168 = call i32 @ib_uverbs_comp_dev(%struct.ib_uverbs_device* %167)
  br label %169

169:                                              ; preds = %166, %161
  %170 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %171 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %170, i32 0, i32 2
  %172 = call i32 @wait_for_completion(i32* %171)
  %173 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %5, align 8
  %174 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %173, i32 0, i32 1
  %175 = call i32 @put_device(%struct.TYPE_11__* %174)
  br label %176

176:                                              ; preds = %169, %154, %25, %18, %12
  ret void
}

declare dso_local %struct.ib_uverbs_device* @kzalloc(i32, i32) #1

declare dso_local i32 @init_srcu_struct(i32*) #1

declare dso_local i32 @kfree(%struct.ib_uverbs_device*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_11__*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.ib_device*) #1

declare dso_local i32 @ida_alloc_max(i32*, i64, i32) #1

declare dso_local i64 @ib_uverbs_create_uapi(%struct.ib_device*, %struct.ib_uverbs_device*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @cdev_init(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @cdev_device_add(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @ib_set_client_data(%struct.ib_device*, i32*, %struct.ib_uverbs_device*) #1

declare dso_local i32 @ida_free(i32*, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @ib_uverbs_comp_dev(%struct.ib_uverbs_device*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @put_device(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
