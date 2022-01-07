; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_notify.c_nvif_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_notify.c_nvif_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvif_notify = type { i32, i32*, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvif_client* }
%struct.nvif_client = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%union.anon = type { %struct.nvif_notify_rep_v0 }
%struct.nvif_notify_rep_v0 = type { i64, i32, i64 }

@NVIF_NOTIFY_DROP = common dso_local global i32 0, align 4
@NVIF_NOTIFY_WORK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvif_notify(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvif_notify*, align 8
  %11 = alloca %union.anon*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nvif_client*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.nvif_notify* null, %struct.nvif_notify** %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %union.anon*
  store %union.anon* %15, %union.anon** %11, align 8
  %16 = load i32, i32* @NVIF_NOTIFY_DROP, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp eq i64 %18, 24
  br i1 %19, label %20, label %42

20:                                               ; preds = %4
  %21 = load %union.anon*, %union.anon** %11, align 8
  %22 = bitcast %union.anon* %21 to %struct.nvif_notify_rep_v0*
  %23 = getelementptr inbounds %struct.nvif_notify_rep_v0, %struct.nvif_notify_rep_v0* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load %union.anon*, %union.anon** %11, align 8
  %28 = bitcast %union.anon* %27 to %struct.nvif_notify_rep_v0*
  %29 = getelementptr inbounds %struct.nvif_notify_rep_v0, %struct.nvif_notify_rep_v0* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @NVIF_NOTIFY_DROP, align 4
  store i32 %34, i32* %5, align 4
  br label %100

35:                                               ; preds = %26
  %36 = load %union.anon*, %union.anon** %11, align 8
  %37 = bitcast %union.anon* %36 to %struct.nvif_notify_rep_v0*
  %38 = getelementptr inbounds %struct.nvif_notify_rep_v0, %struct.nvif_notify_rep_v0* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = bitcast i8* %40 to %struct.nvif_notify*
  store %struct.nvif_notify* %41, %struct.nvif_notify** %10, align 8
  br label %42

42:                                               ; preds = %35, %20, %4
  %43 = load %struct.nvif_notify*, %struct.nvif_notify** %10, align 8
  %44 = icmp eq %struct.nvif_notify* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i64 @WARN_ON(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %98, label %48

48:                                               ; preds = %42
  %49 = load %struct.nvif_notify*, %struct.nvif_notify** %10, align 8
  %50 = getelementptr inbounds %struct.nvif_notify, %struct.nvif_notify* %49, i32 0, i32 5
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load %struct.nvif_client*, %struct.nvif_client** %52, align 8
  store %struct.nvif_client* %53, %struct.nvif_client** %13, align 8
  %54 = load %struct.nvif_notify*, %struct.nvif_notify** %10, align 8
  %55 = getelementptr inbounds %struct.nvif_notify, %struct.nvif_notify* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @WARN_ON(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %97, label %62

62:                                               ; preds = %48
  %63 = load %struct.nvif_notify*, %struct.nvif_notify** %10, align 8
  %64 = getelementptr inbounds %struct.nvif_notify, %struct.nvif_notify* %63, i32 0, i32 4
  %65 = call i32 @atomic_inc(i32* %64)
  %66 = load i32, i32* @NVIF_NOTIFY_WORK, align 4
  %67 = load %struct.nvif_notify*, %struct.nvif_notify** %10, align 8
  %68 = getelementptr inbounds %struct.nvif_notify, %struct.nvif_notify* %67, i32 0, i32 3
  %69 = call i64 @test_bit(i32 %66, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %62
  %72 = load %struct.nvif_notify*, %struct.nvif_notify** %10, align 8
  %73 = getelementptr inbounds %struct.nvif_notify, %struct.nvif_notify* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = bitcast i32* %74 to i8*
  %76 = load i8*, i8** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @memcpy(i8* %75, i8* %76, i32 %77)
  %79 = load %struct.nvif_notify*, %struct.nvif_notify** %10, align 8
  %80 = getelementptr inbounds %struct.nvif_notify, %struct.nvif_notify* %79, i32 0, i32 2
  %81 = call i32 @schedule_work(i32* %80)
  %82 = load i32, i32* @NVIF_NOTIFY_DROP, align 4
  store i32 %82, i32* %5, align 4
  br label %100

83:                                               ; preds = %62
  %84 = load i8*, i8** %8, align 8
  %85 = bitcast i8* %84 to i32*
  %86 = load %struct.nvif_notify*, %struct.nvif_notify** %10, align 8
  %87 = getelementptr inbounds %struct.nvif_notify, %struct.nvif_notify* %86, i32 0, i32 1
  store i32* %85, i32** %87, align 8
  %88 = load %struct.nvif_notify*, %struct.nvif_notify** %10, align 8
  %89 = load %struct.nvif_client*, %struct.nvif_client** %13, align 8
  %90 = getelementptr inbounds %struct.nvif_client, %struct.nvif_client* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @nvif_notify_func(%struct.nvif_notify* %88, i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load %struct.nvif_notify*, %struct.nvif_notify** %10, align 8
  %96 = getelementptr inbounds %struct.nvif_notify, %struct.nvif_notify* %95, i32 0, i32 1
  store i32* null, i32** %96, align 8
  br label %97

97:                                               ; preds = %83, %48
  br label %98

98:                                               ; preds = %97, %42
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %98, %71, %33
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @nvif_notify_func(%struct.nvif_notify*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
