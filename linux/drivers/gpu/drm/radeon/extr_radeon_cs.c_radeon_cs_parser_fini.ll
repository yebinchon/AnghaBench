; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_parser_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_parser_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i32, i32, %struct.TYPE_8__, i32, %struct.TYPE_8__, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { %struct.radeon_bo* }
%struct.radeon_bo = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }

@cmp_size_smaller_first = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_cs_parser*, i32, i32)* @radeon_cs_parser_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_cs_parser_fini(%struct.radeon_cs_parser* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_cs_parser*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.radeon_bo*, align 8
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %3
  %12 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %13 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %12, i32 0, i32 10
  %14 = load i32, i32* @cmp_size_smaller_first, align 4
  %15 = call i32 @list_sort(i32* null, i32* %13, i32 %14)
  %16 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %17 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %16, i32 0, i32 11
  %18 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %19 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %18, i32 0, i32 10
  %20 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %21 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = call i32 @ttm_eu_fence_buffer_objects(i32* %17, i32* %19, i32* %24)
  br label %36

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %31 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %30, i32 0, i32 11
  %32 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %33 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %32, i32 0, i32 10
  %34 = call i32 @ttm_eu_backoff_reservation(i32* %31, i32* %33)
  br label %35

35:                                               ; preds = %29, %26
  br label %36

36:                                               ; preds = %35, %11
  %37 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %38 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %37, i32 0, i32 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = icmp ne %struct.TYPE_9__* %39, null
  br i1 %40, label %41, label %69

41:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %65, %41
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %45 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ult i32 %43, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %42
  %49 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %50 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %49, i32 0, i32 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load %struct.radeon_bo*, %struct.radeon_bo** %55, align 8
  store %struct.radeon_bo* %56, %struct.radeon_bo** %8, align 8
  %57 = load %struct.radeon_bo*, %struct.radeon_bo** %8, align 8
  %58 = icmp eq %struct.radeon_bo* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %65

60:                                               ; preds = %48
  %61 = load %struct.radeon_bo*, %struct.radeon_bo** %8, align 8
  %62 = getelementptr inbounds %struct.radeon_bo, %struct.radeon_bo* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = call i32 @drm_gem_object_put_unlocked(i32* %63)
  br label %65

65:                                               ; preds = %60, %59
  %66 = load i32, i32* %7, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %42

68:                                               ; preds = %42
  br label %69

69:                                               ; preds = %68, %36
  %70 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %71 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %70, i32 0, i32 9
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = call i32 @kfree(%struct.TYPE_10__* %72)
  %74 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %75 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %74, i32 0, i32 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = call i32 @kvfree(%struct.TYPE_9__* %76)
  %78 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %79 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %78, i32 0, i32 7
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = call i32 @kvfree(%struct.TYPE_9__* %80)
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %98, %69
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %85 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ult i32 %83, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %82
  %89 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %90 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %89, i32 0, i32 6
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = call i32 @kvfree(%struct.TYPE_9__* %96)
  br label %98

98:                                               ; preds = %88
  %99 = load i32, i32* %7, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %82

101:                                              ; preds = %82
  %102 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %103 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %102, i32 0, i32 6
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = call i32 @kfree(%struct.TYPE_10__* %104)
  %106 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %107 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %106, i32 0, i32 5
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = call i32 @kfree(%struct.TYPE_10__* %108)
  %110 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %111 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %114 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %113, i32 0, i32 4
  %115 = call i32 @radeon_ib_free(i32 %112, %struct.TYPE_8__* %114)
  %116 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %117 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %4, align 8
  %120 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %119, i32 0, i32 2
  %121 = call i32 @radeon_ib_free(i32 %118, %struct.TYPE_8__* %120)
  ret void
}

declare dso_local i32 @list_sort(i32*, i32*, i32) #1

declare dso_local i32 @ttm_eu_fence_buffer_objects(i32*, i32*, i32*) #1

declare dso_local i32 @ttm_eu_backoff_reservation(i32*, i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_10__*) #1

declare dso_local i32 @kvfree(%struct.TYPE_9__*) #1

declare dso_local i32 @radeon_ib_free(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
