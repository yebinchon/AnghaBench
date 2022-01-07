; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_recovery_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5l_recovery_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5l_log = type { i32, i64, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mddev* }
%struct.mddev = type { i32 }
%struct.r5l_recovery_ctx = type { i64, i64, i32, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"md/raid:%s: starting from clean shutdown\0A\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"md/raid:%s: recovering %d data-only stripes and %d data-parity stripes\0A\00", align 1
@BLOCK_SECTORS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"md/raid:%s: failed to rewrite stripes to journal\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r5l_log*)* @r5l_recovery_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r5l_recovery_log(%struct.r5l_log* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r5l_log*, align 8
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.r5l_recovery_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.r5l_log* %0, %struct.r5l_log** %3, align 8
  %8 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %9 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %8, i32 0, i32 5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.mddev*, %struct.mddev** %11, align 8
  store %struct.mddev* %12, %struct.mddev** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.r5l_recovery_ctx* @kzalloc(i32 40, i32 %13)
  store %struct.r5l_recovery_ctx* %14, %struct.r5l_recovery_ctx** %5, align 8
  %15 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %16 = icmp ne %struct.r5l_recovery_ctx* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %165

20:                                               ; preds = %1
  %21 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %22 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %27 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %29, i32 0, i32 3
  store i64 %28, i64* %30, align 8
  %31 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %31, i32 0, i32 5
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32 @alloc_page(i32 %34)
  %36 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %20
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %161

45:                                               ; preds = %20
  %46 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %47 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %48 = call i64 @r5l_recovery_allocate_ra_pool(%struct.r5l_log* %46, %struct.r5l_recovery_ctx* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %156

53:                                               ; preds = %45
  %54 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %55 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %56 = call i32 @r5c_recovery_flush_log(%struct.r5l_log* %54, %struct.r5l_recovery_ctx* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %152

60:                                               ; preds = %53
  %61 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %62 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %7, align 4
  %64 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %65 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 10000
  store i64 %67, i64* %65, align 8
  %68 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %69 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %60
  %73 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %74 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.mddev*, %struct.mddev** %4, align 8
  %79 = call i32 @mdname(%struct.mddev* %78)
  %80 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %91

81:                                               ; preds = %72, %60
  %82 = load %struct.mddev*, %struct.mddev** %4, align 8
  %83 = call i32 @mdname(%struct.mddev* %82)
  %84 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %85 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %88 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %83, i64 %86, i64 %89)
  br label %91

91:                                               ; preds = %81, %77
  %92 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %93 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %120

96:                                               ; preds = %91
  %97 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %98 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %101 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %103 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %104 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %107 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %107, align 8
  %110 = trunc i64 %108 to i32
  %111 = call i32 @r5l_log_write_empty_meta_block(%struct.r5l_log* %102, i32 %105, i32 %110)
  %112 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %113 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %114 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @BLOCK_SECTORS, align 4
  %117 = call i32 @r5l_ring_add(%struct.r5l_log* %112, i32 %115, i32 %116)
  %118 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %119 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  br label %132

120:                                              ; preds = %91
  %121 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %122 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %123 = call i64 @r5c_recovery_rewrite_data_only_stripes(%struct.r5l_log* %121, %struct.r5l_recovery_ctx* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load %struct.mddev*, %struct.mddev** %4, align 8
  %127 = call i32 @mdname(%struct.mddev* %126)
  %128 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @EIO, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %6, align 4
  br label %152

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131, %96
  %133 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %134 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %137 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %139 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %142 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %141, i32 0, i32 1
  store i64 %140, i64* %142, align 8
  %143 = load i32, i32* %7, align 4
  %144 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %145 = getelementptr inbounds %struct.r5l_log, %struct.r5l_log* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @r5l_write_super(%struct.r5l_log* %146, i32 %147)
  %149 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %150 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %151 = call i32 @r5c_recovery_flush_data_only_stripes(%struct.r5l_log* %149, %struct.r5l_recovery_ctx* %150)
  store i32 0, i32* %6, align 4
  br label %152

152:                                              ; preds = %132, %125, %59
  %153 = load %struct.r5l_log*, %struct.r5l_log** %3, align 8
  %154 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %155 = call i32 @r5l_recovery_free_ra_pool(%struct.r5l_log* %153, %struct.r5l_recovery_ctx* %154)
  br label %156

156:                                              ; preds = %152, %50
  %157 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %158 = getelementptr inbounds %struct.r5l_recovery_ctx, %struct.r5l_recovery_ctx* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @__free_page(i32 %159)
  br label %161

161:                                              ; preds = %156, %42
  %162 = load %struct.r5l_recovery_ctx*, %struct.r5l_recovery_ctx** %5, align 8
  %163 = call i32 @kfree(%struct.r5l_recovery_ctx* %162)
  %164 = load i32, i32* %6, align 4
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %161, %17
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local %struct.r5l_recovery_ctx* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @alloc_page(i32) #1

declare dso_local i64 @r5l_recovery_allocate_ra_pool(%struct.r5l_log*, %struct.r5l_recovery_ctx*) #1

declare dso_local i32 @r5c_recovery_flush_log(%struct.r5l_log*, %struct.r5l_recovery_ctx*) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

declare dso_local i32 @mdname(%struct.mddev*) #1

declare dso_local i32 @r5l_log_write_empty_meta_block(%struct.r5l_log*, i32, i32) #1

declare dso_local i32 @r5l_ring_add(%struct.r5l_log*, i32, i32) #1

declare dso_local i64 @r5c_recovery_rewrite_data_only_stripes(%struct.r5l_log*, %struct.r5l_recovery_ctx*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @r5l_write_super(%struct.r5l_log*, i32) #1

declare dso_local i32 @r5c_recovery_flush_data_only_stripes(%struct.r5l_log*, %struct.r5l_recovery_ctx*) #1

declare dso_local i32 @r5l_recovery_free_ra_pool(%struct.r5l_log*, %struct.r5l_recovery_ctx*) #1

declare dso_local i32 @__free_page(i32) #1

declare dso_local i32 @kfree(%struct.r5l_recovery_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
