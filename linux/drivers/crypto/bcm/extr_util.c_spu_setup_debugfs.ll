; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_util.c_spu_setup_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_util.c_spu_setup_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@iproc_priv = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@spu_debugfs_stats = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spu_setup_debugfs() #0 {
  %1 = call i32 (...) @debugfs_initialized()
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %16

4:                                                ; preds = %0
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @iproc_priv, i32 0, i32 0), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load i32, i32* @KBUILD_MODNAME, align 4
  %9 = call i64 @debugfs_create_dir(i32 %8, i32* null)
  store i64 %9, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @iproc_priv, i32 0, i32 0), align 8
  br label %10

10:                                               ; preds = %7, %4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @iproc_priv, i32 0, i32 1), align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @iproc_priv, i32 0, i32 0), align 8
  %15 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 256, i64 %14, %struct.TYPE_3__* @iproc_priv, i32* @spu_debugfs_stats)
  br label %16

16:                                               ; preds = %3, %13, %10
  ret void
}

declare dso_local i32 @debugfs_initialized(...) #1

declare dso_local i64 @debugfs_create_dir(i32, i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i64, %struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
