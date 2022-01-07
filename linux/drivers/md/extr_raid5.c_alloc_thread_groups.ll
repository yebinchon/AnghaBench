; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_alloc_thread_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_alloc_thread_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r5conf = type { i32 }
%struct.r5worker_group = type { i32*, i32, %struct.r5worker_group*, %struct.r5worker_group*, %struct.r5conf*, i32, i32 }
%struct.r5worker = type { i32*, i32, %struct.r5worker*, %struct.r5worker*, %struct.r5conf*, i32, i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@raid5_do_work = common dso_local global i32 0, align 4
@NR_STRIPE_HASH_LOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r5conf*, i32, i32*, i32*, %struct.r5worker_group**)* @alloc_thread_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_thread_groups(%struct.r5conf* %0, i32 %1, i32* %2, i32* %3, %struct.r5worker_group** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.r5conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.r5worker_group**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.r5worker*, align 8
  %17 = alloca %struct.r5worker_group*, align 8
  %18 = alloca %struct.r5worker*, align 8
  store %struct.r5conf* %0, %struct.r5conf** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.r5worker_group** %4, %struct.r5worker_group*** %11, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32*, i32** %10, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32*, i32** %9, align 8
  store i32 0, i32* %24, align 4
  %25 = load %struct.r5worker_group**, %struct.r5worker_group*** %11, align 8
  store %struct.r5worker_group* null, %struct.r5worker_group** %25, align 8
  store i32 0, i32* %6, align 4
  br label %133

26:                                               ; preds = %5
  %27 = call i32 (...) @num_possible_nodes()
  %28 = load i32*, i32** %9, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 48, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @GFP_NOIO, align 4
  %37 = call %struct.r5worker_group* @kcalloc(i32 %33, i32 %35, i32 %36)
  %38 = bitcast %struct.r5worker_group* %37 to %struct.r5worker*
  store %struct.r5worker* %38, %struct.r5worker** %16, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @GFP_NOIO, align 4
  %42 = call %struct.r5worker_group* @kcalloc(i32 %40, i32 48, i32 %41)
  %43 = load %struct.r5worker_group**, %struct.r5worker_group*** %11, align 8
  store %struct.r5worker_group* %42, %struct.r5worker_group** %43, align 8
  %44 = load %struct.r5worker_group**, %struct.r5worker_group*** %11, align 8
  %45 = load %struct.r5worker_group*, %struct.r5worker_group** %44, align 8
  %46 = icmp ne %struct.r5worker_group* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %26
  %48 = load %struct.r5worker*, %struct.r5worker** %16, align 8
  %49 = icmp ne %struct.r5worker* %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %47, %26
  %51 = load %struct.r5worker*, %struct.r5worker** %16, align 8
  %52 = bitcast %struct.r5worker* %51 to %struct.r5worker_group*
  %53 = call i32 @kfree(%struct.r5worker_group* %52)
  %54 = load %struct.r5worker_group**, %struct.r5worker_group*** %11, align 8
  %55 = load %struct.r5worker_group*, %struct.r5worker_group** %54, align 8
  %56 = call i32 @kfree(%struct.r5worker_group* %55)
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %133

59:                                               ; preds = %47
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %129, %59
  %61 = load i32, i32* %12, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %132

65:                                               ; preds = %60
  %66 = load %struct.r5worker_group**, %struct.r5worker_group*** %11, align 8
  %67 = load %struct.r5worker_group*, %struct.r5worker_group** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.r5worker_group, %struct.r5worker_group* %67, i64 %69
  store %struct.r5worker_group* %70, %struct.r5worker_group** %17, align 8
  %71 = load %struct.r5worker_group*, %struct.r5worker_group** %17, align 8
  %72 = getelementptr inbounds %struct.r5worker_group, %struct.r5worker_group* %71, i32 0, i32 6
  %73 = call i32 @INIT_LIST_HEAD(i32* %72)
  %74 = load %struct.r5worker_group*, %struct.r5worker_group** %17, align 8
  %75 = getelementptr inbounds %struct.r5worker_group, %struct.r5worker_group* %74, i32 0, i32 5
  %76 = call i32 @INIT_LIST_HEAD(i32* %75)
  %77 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  %78 = load %struct.r5worker_group*, %struct.r5worker_group** %17, align 8
  %79 = getelementptr inbounds %struct.r5worker_group, %struct.r5worker_group* %78, i32 0, i32 4
  store %struct.r5conf* %77, %struct.r5conf** %79, align 8
  %80 = load %struct.r5worker*, %struct.r5worker** %16, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %8, align 4
  %83 = mul nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.r5worker, %struct.r5worker* %80, i64 %84
  %86 = bitcast %struct.r5worker* %85 to %struct.r5worker_group*
  %87 = load %struct.r5worker_group*, %struct.r5worker_group** %17, align 8
  %88 = getelementptr inbounds %struct.r5worker_group, %struct.r5worker_group* %87, i32 0, i32 3
  store %struct.r5worker_group* %86, %struct.r5worker_group** %88, align 8
  store i32 0, i32* %13, align 4
  br label %89

89:                                               ; preds = %125, %65
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %128

93:                                               ; preds = %89
  %94 = load %struct.r5worker_group*, %struct.r5worker_group** %17, align 8
  %95 = getelementptr inbounds %struct.r5worker_group, %struct.r5worker_group* %94, i32 0, i32 3
  %96 = load %struct.r5worker_group*, %struct.r5worker_group** %95, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.r5worker_group, %struct.r5worker_group* %96, i64 %98
  %100 = bitcast %struct.r5worker_group* %99 to %struct.r5worker*
  store %struct.r5worker* %100, %struct.r5worker** %18, align 8
  %101 = load %struct.r5worker_group*, %struct.r5worker_group** %17, align 8
  %102 = bitcast %struct.r5worker_group* %101 to %struct.r5worker*
  %103 = load %struct.r5worker*, %struct.r5worker** %18, align 8
  %104 = getelementptr inbounds %struct.r5worker, %struct.r5worker* %103, i32 0, i32 2
  store %struct.r5worker* %102, %struct.r5worker** %104, align 8
  %105 = load %struct.r5worker*, %struct.r5worker** %18, align 8
  %106 = getelementptr inbounds %struct.r5worker, %struct.r5worker* %105, i32 0, i32 1
  %107 = load i32, i32* @raid5_do_work, align 4
  %108 = call i32 @INIT_WORK(i32* %106, i32 %107)
  store i32 0, i32* %14, align 4
  br label %109

109:                                              ; preds = %121, %93
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* @NR_STRIPE_HASH_LOCKS, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %109
  %114 = load %struct.r5worker*, %struct.r5worker** %18, align 8
  %115 = getelementptr inbounds %struct.r5worker, %struct.r5worker* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = call i32 @INIT_LIST_HEAD(i32* %119)
  br label %121

121:                                              ; preds = %113
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  br label %109

124:                                              ; preds = %109
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %13, align 4
  br label %89

128:                                              ; preds = %89
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  br label %60

132:                                              ; preds = %60
  store i32 0, i32* %6, align 4
  br label %133

133:                                              ; preds = %132, %50, %23
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

declare dso_local i32 @num_possible_nodes(...) #1

declare dso_local %struct.r5worker_group* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.r5worker_group*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
