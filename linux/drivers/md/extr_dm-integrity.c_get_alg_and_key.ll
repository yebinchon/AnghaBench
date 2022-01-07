; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_get_alg_and_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_get_alg_and_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alg_spec = type { i8*, i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Out of memory for an argument\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.alg_spec*, i8**, i8*)* @get_alg_and_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_alg_and_key(i8* %0, %struct.alg_spec* %1, i8** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.alg_spec*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.alg_spec* %1, %struct.alg_spec** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.alg_spec*, %struct.alg_spec** %7, align 8
  %12 = call i32 @free_alg(%struct.alg_spec* %11)
  %13 = load i8*, i8** %6, align 8
  %14 = call i8* @strchr(i8* %13, i8 signext 58)
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kstrdup(i8* %15, i32 %16)
  %18 = load %struct.alg_spec*, %struct.alg_spec** %7, align 8
  %19 = getelementptr inbounds %struct.alg_spec, %struct.alg_spec* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.alg_spec*, %struct.alg_spec** %7, align 8
  %21 = getelementptr inbounds %struct.alg_spec, %struct.alg_spec* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  br label %85

25:                                               ; preds = %4
  %26 = load %struct.alg_spec*, %struct.alg_spec** %7, align 8
  %27 = getelementptr inbounds %struct.alg_spec, %struct.alg_spec* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @strchr(i8* %28, i8 signext 58)
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %79

32:                                               ; preds = %25
  %33 = load i8*, i8** %10, align 8
  store i8 0, i8* %33, align 1
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load %struct.alg_spec*, %struct.alg_spec** %7, align 8
  %37 = getelementptr inbounds %struct.alg_spec, %struct.alg_spec* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.alg_spec*, %struct.alg_spec** %7, align 8
  %39 = getelementptr inbounds %struct.alg_spec, %struct.alg_spec* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %80

45:                                               ; preds = %32
  %46 = load %struct.alg_spec*, %struct.alg_spec** %7, align 8
  %47 = getelementptr inbounds %struct.alg_spec, %struct.alg_spec* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = sdiv i32 %49, 2
  %51 = load %struct.alg_spec*, %struct.alg_spec** %7, align 8
  %52 = getelementptr inbounds %struct.alg_spec, %struct.alg_spec* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.alg_spec*, %struct.alg_spec** %7, align 8
  %54 = getelementptr inbounds %struct.alg_spec, %struct.alg_spec* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i32 @kmalloc(i32 %55, i32 %56)
  %58 = load %struct.alg_spec*, %struct.alg_spec** %7, align 8
  %59 = getelementptr inbounds %struct.alg_spec, %struct.alg_spec* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.alg_spec*, %struct.alg_spec** %7, align 8
  %61 = getelementptr inbounds %struct.alg_spec, %struct.alg_spec* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %45
  br label %85

65:                                               ; preds = %45
  %66 = load %struct.alg_spec*, %struct.alg_spec** %7, align 8
  %67 = getelementptr inbounds %struct.alg_spec, %struct.alg_spec* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.alg_spec*, %struct.alg_spec** %7, align 8
  %70 = getelementptr inbounds %struct.alg_spec, %struct.alg_spec* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.alg_spec*, %struct.alg_spec** %7, align 8
  %73 = getelementptr inbounds %struct.alg_spec, %struct.alg_spec* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @hex2bin(i32 %68, i8* %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  br label %80

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78, %25
  store i32 0, i32* %5, align 4
  br label %89

80:                                               ; preds = %77, %44
  %81 = load i8*, i8** %9, align 8
  %82 = load i8**, i8*** %8, align 8
  store i8* %81, i8** %82, align 8
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %89

85:                                               ; preds = %64, %24
  %86 = load i8**, i8*** %8, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %86, align 8
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %85, %80, %79
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @free_alg(%struct.alg_spec*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i64 @hex2bin(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
