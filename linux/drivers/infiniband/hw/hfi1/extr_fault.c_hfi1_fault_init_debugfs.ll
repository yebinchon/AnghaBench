; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_fault.c_hfi1_fault_init_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_fault.c_hfi1_fault_init_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ibdev = type { i32, i32, i32, i32, %struct.hfi1_ibdev*, i32, i32, %struct.dentry*, %struct.TYPE_2__, i32, i64, %struct.dentry* }
%struct.TYPE_2__ = type { i32, i32, i64, i32*, i32 }
%struct.dentry = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i32 0, align 4
@HFI1_FAULT_DIR_TXRX = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"fault\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"fault_stats\00", align 1
@_fault_stats_file_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"suppress_err\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"opcode_mode\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"opcodes\00", align 1
@__fault_opcodes_fops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"skip_pkts\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"skip_usec\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"direction\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_fault_init_debugfs(%struct.hfi1_ibdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_ibdev*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  store %struct.hfi1_ibdev* %0, %struct.hfi1_ibdev** %3, align 8
  %6 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %3, align 8
  %7 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %6, i32 0, i32 11
  %8 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %8, %struct.dentry** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.hfi1_ibdev* @kzalloc(i32 96, i32 %9)
  %11 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %3, align 8
  %12 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %11, i32 0, i32 4
  store %struct.hfi1_ibdev* %10, %struct.hfi1_ibdev** %12, align 8
  %13 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %3, align 8
  %14 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %13, i32 0, i32 4
  %15 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %14, align 8
  %16 = icmp ne %struct.hfi1_ibdev* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %150

20:                                               ; preds = %1
  %21 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %3, align 8
  %22 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %21, i32 0, i32 4
  %23 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %22, align 8
  %24 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %23, i32 0, i32 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load i32, i32* @ULONG_MAX, align 4
  %27 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %3, align 8
  %28 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %27, i32 0, i32 4
  %29 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %28, align 8
  %30 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %29, i32 0, i32 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  store i32 %26, i32* %31, align 8
  %32 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %3, align 8
  %33 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %32, i32 0, i32 4
  %34 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %33, align 8
  %35 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 32, i32* %36, align 4
  %37 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %3, align 8
  %38 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %37, i32 0, i32 4
  %39 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %38, align 8
  %40 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %39, i32 0, i32 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  store i32* null, i32** %41, align 8
  %42 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %3, align 8
  %43 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %42, i32 0, i32 4
  %44 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %43, align 8
  %45 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %44, i32 0, i32 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %3, align 8
  %48 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %47, i32 0, i32 4
  %49 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %48, align 8
  %50 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %3, align 8
  %52 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %51, i32 0, i32 4
  %53 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %52, align 8
  %54 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %3, align 8
  %56 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %55, i32 0, i32 4
  %57 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %56, align 8
  %58 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %57, i32 0, i32 6
  store i32 0, i32* %58, align 4
  %59 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %3, align 8
  %60 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %59, i32 0, i32 4
  %61 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %60, align 8
  %62 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %61, i32 0, i32 10
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* @HFI1_FAULT_DIR_TXRX, align 4
  %64 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %3, align 8
  %65 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %64, i32 0, i32 4
  %66 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %65, align 8
  %67 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %66, i32 0, i32 3
  store i32 %63, i32* %67, align 4
  %68 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %3, align 8
  %69 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %68, i32 0, i32 4
  %70 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %69, align 8
  %71 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %70, i32 0, i32 2
  store i32 0, i32* %71, align 8
  %72 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %3, align 8
  %73 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %72, i32 0, i32 4
  %74 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %73, align 8
  %75 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @BITS_PER_BYTE, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 4, %78
  %80 = trunc i64 %79 to i32
  %81 = call i32 @bitmap_zero(i32 %76, i32 %80)
  %82 = load %struct.dentry*, %struct.dentry** %4, align 8
  %83 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %3, align 8
  %84 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %83, i32 0, i32 4
  %85 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %84, align 8
  %86 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %85, i32 0, i32 8
  %87 = call %struct.dentry* @fault_create_debugfs_attr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.dentry* %82, %struct.TYPE_2__* %86)
  store %struct.dentry* %87, %struct.dentry** %5, align 8
  %88 = load %struct.dentry*, %struct.dentry** %5, align 8
  %89 = call i64 @IS_ERR(%struct.dentry* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %20
  %92 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %3, align 8
  %93 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %92, i32 0, i32 4
  %94 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %93, align 8
  %95 = call i32 @kfree(%struct.hfi1_ibdev* %94)
  %96 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %3, align 8
  %97 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %96, i32 0, i32 4
  store %struct.hfi1_ibdev* null, %struct.hfi1_ibdev** %97, align 8
  %98 = load i32, i32* @ENOENT, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %150

100:                                              ; preds = %20
  %101 = load %struct.dentry*, %struct.dentry** %5, align 8
  %102 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %3, align 8
  %103 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %102, i32 0, i32 4
  %104 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %103, align 8
  %105 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %104, i32 0, i32 7
  store %struct.dentry* %101, %struct.dentry** %105, align 8
  %106 = load %struct.dentry*, %struct.dentry** %5, align 8
  %107 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %3, align 8
  %108 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 292, %struct.dentry* %106, %struct.hfi1_ibdev* %107, i32* @_fault_stats_file_ops)
  %109 = load %struct.dentry*, %struct.dentry** %5, align 8
  %110 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %3, align 8
  %111 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %110, i32 0, i32 4
  %112 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %111, align 8
  %113 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %112, i32 0, i32 0
  %114 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 384, %struct.dentry* %109, i32* %113)
  %115 = load %struct.dentry*, %struct.dentry** %5, align 8
  %116 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %3, align 8
  %117 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %116, i32 0, i32 4
  %118 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %117, align 8
  %119 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %118, i32 0, i32 2
  %120 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 384, %struct.dentry* %115, i32* %119)
  %121 = load %struct.dentry*, %struct.dentry** %5, align 8
  %122 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %3, align 8
  %123 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %122, i32 0, i32 4
  %124 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %123, align 8
  %125 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %124, i32 0, i32 1
  %126 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 384, %struct.dentry* %121, i32* %125)
  %127 = load %struct.dentry*, %struct.dentry** %5, align 8
  %128 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %3, align 8
  %129 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %128, i32 0, i32 4
  %130 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %129, align 8
  %131 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 384, %struct.dentry* %127, %struct.hfi1_ibdev* %130, i32* @__fault_opcodes_fops)
  %132 = load %struct.dentry*, %struct.dentry** %5, align 8
  %133 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %3, align 8
  %134 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %133, i32 0, i32 4
  %135 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %134, align 8
  %136 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %135, i32 0, i32 6
  %137 = call i32 @debugfs_create_u64(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 384, %struct.dentry* %132, i32* %136)
  %138 = load %struct.dentry*, %struct.dentry** %5, align 8
  %139 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %3, align 8
  %140 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %139, i32 0, i32 4
  %141 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %140, align 8
  %142 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %141, i32 0, i32 5
  %143 = call i32 @debugfs_create_u64(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 384, %struct.dentry* %138, i32* %142)
  %144 = load %struct.dentry*, %struct.dentry** %5, align 8
  %145 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %3, align 8
  %146 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %145, i32 0, i32 4
  %147 = load %struct.hfi1_ibdev*, %struct.hfi1_ibdev** %146, align 8
  %148 = getelementptr inbounds %struct.hfi1_ibdev, %struct.hfi1_ibdev* %147, i32 0, i32 3
  %149 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 384, %struct.dentry* %144, i32* %148)
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %100, %91, %17
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local %struct.hfi1_ibdev* @kzalloc(i32, i32) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local %struct.dentry* @fault_create_debugfs_attr(i8*, %struct.dentry*, %struct.TYPE_2__*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @kfree(%struct.hfi1_ibdev*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.hfi1_ibdev*, i32*) #1

declare dso_local i32 @debugfs_create_bool(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_u64(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_u8(i8*, i32, %struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
