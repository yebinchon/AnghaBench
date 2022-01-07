; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_job.c_do_relocs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_job.c_do_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_job = type { i32, i32*, i64, %struct.host1x_reloc* }
%struct.host1x_reloc = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.host1x_bo* }
%struct.host1x_bo = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.host1x_job_gather = type { i32, %struct.host1x_bo* }

@CONFIG_TEGRA_HOST1X_FIREWALL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not map cmdbuf for relocation\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host1x_job*, %struct.host1x_job_gather*)* @do_relocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_relocs(%struct.host1x_job* %0, %struct.host1x_job_gather* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.host1x_job*, align 8
  %5 = alloca %struct.host1x_job_gather*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.host1x_bo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.host1x_reloc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.host1x_job* %0, %struct.host1x_job** %4, align 8
  store %struct.host1x_job_gather* %1, %struct.host1x_job_gather** %5, align 8
  store i32 -1, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %13 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %5, align 8
  %14 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %13, i32 0, i32 1
  %15 = load %struct.host1x_bo*, %struct.host1x_bo** %14, align 8
  store %struct.host1x_bo* %15, %struct.host1x_bo** %8, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %132, %2
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %19 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %135

22:                                               ; preds = %16
  %23 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %24 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %23, i32 0, i32 3
  %25 = load %struct.host1x_reloc*, %struct.host1x_reloc** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.host1x_reloc, %struct.host1x_reloc* %25, i64 %27
  store %struct.host1x_reloc* %28, %struct.host1x_reloc** %10, align 8
  %29 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %30 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.host1x_reloc*, %struct.host1x_reloc** %10, align 8
  %37 = getelementptr inbounds %struct.host1x_reloc, %struct.host1x_reloc* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %35, %39
  %41 = load %struct.host1x_reloc*, %struct.host1x_reloc** %10, align 8
  %42 = getelementptr inbounds %struct.host1x_reloc, %struct.host1x_reloc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = ashr i32 %40, %43
  store i32 %44, i32* %11, align 4
  %45 = load %struct.host1x_bo*, %struct.host1x_bo** %8, align 8
  %46 = load %struct.host1x_reloc*, %struct.host1x_reloc** %10, align 8
  %47 = getelementptr inbounds %struct.host1x_reloc, %struct.host1x_reloc* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load %struct.host1x_bo*, %struct.host1x_bo** %48, align 8
  %50 = icmp ne %struct.host1x_bo* %45, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %22
  br label %132

52:                                               ; preds = %22
  %53 = load i32, i32* @CONFIG_TEGRA_HOST1X_FIREWALL, align 4
  %54 = call i64 @IS_ENABLED(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %52
  %57 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %58 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i32*
  %61 = load %struct.host1x_reloc*, %struct.host1x_reloc** %10, align 8
  %62 = getelementptr inbounds %struct.host1x_reloc, %struct.host1x_reloc* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = udiv i64 %65, 4
  %67 = getelementptr inbounds i32, i32* %60, i64 %66
  %68 = load %struct.host1x_job_gather*, %struct.host1x_job_gather** %5, align 8
  %69 = getelementptr inbounds %struct.host1x_job_gather, %struct.host1x_job_gather* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = udiv i64 %71, 4
  %73 = getelementptr inbounds i32, i32* %67, i64 %72
  store i32* %73, i32** %12, align 8
  br label %129

74:                                               ; preds = %52
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.host1x_reloc*, %struct.host1x_reloc** %10, align 8
  %77 = getelementptr inbounds %struct.host1x_reloc, %struct.host1x_reloc* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @PAGE_SHIFT, align 4
  %81 = ashr i32 %79, %80
  %82 = icmp ne i32 %75, %81
  br i1 %82, label %83, label %117

83:                                               ; preds = %74
  %84 = load i8*, i8** %7, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load %struct.host1x_bo*, %struct.host1x_bo** %8, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @host1x_bo_kunmap(%struct.host1x_bo* %87, i32 %88, i8* %89)
  br label %91

91:                                               ; preds = %86, %83
  %92 = load %struct.host1x_bo*, %struct.host1x_bo** %8, align 8
  %93 = load %struct.host1x_reloc*, %struct.host1x_reloc** %10, align 8
  %94 = getelementptr inbounds %struct.host1x_reloc, %struct.host1x_reloc* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @PAGE_SHIFT, align 4
  %98 = ashr i32 %96, %97
  %99 = call i8* @host1x_bo_kmap(%struct.host1x_bo* %92, i32 %98)
  store i8* %99, i8** %7, align 8
  %100 = load %struct.host1x_reloc*, %struct.host1x_reloc** %10, align 8
  %101 = getelementptr inbounds %struct.host1x_reloc, %struct.host1x_reloc* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @PAGE_SHIFT, align 4
  %105 = ashr i32 %103, %104
  store i32 %105, i32* %6, align 4
  %106 = load i8*, i8** %7, align 8
  %107 = icmp ne i8* %106, null
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i64 @unlikely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %91
  %113 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %144

116:                                              ; preds = %91
  br label %117

117:                                              ; preds = %116, %74
  %118 = load i8*, i8** %7, align 8
  %119 = load %struct.host1x_reloc*, %struct.host1x_reloc** %10, align 8
  %120 = getelementptr inbounds %struct.host1x_reloc, %struct.host1x_reloc* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @PAGE_MASK, align 4
  %124 = xor i32 %123, -1
  %125 = and i32 %122, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr i8, i8* %118, i64 %126
  %128 = bitcast i8* %127 to i32*
  store i32* %128, i32** %12, align 8
  br label %129

129:                                              ; preds = %117, %56
  %130 = load i32, i32* %11, align 4
  %131 = load i32*, i32** %12, align 8
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %129, %51
  %133 = load i32, i32* %9, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %16

135:                                              ; preds = %16
  %136 = load i8*, i8** %7, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load %struct.host1x_bo*, %struct.host1x_bo** %8, align 8
  %140 = load i32, i32* %6, align 4
  %141 = load i8*, i8** %7, align 8
  %142 = call i32 @host1x_bo_kunmap(%struct.host1x_bo* %139, i32 %140, i8* %141)
  br label %143

143:                                              ; preds = %138, %135
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %143, %112
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @host1x_bo_kunmap(%struct.host1x_bo*, i32, i8*) #1

declare dso_local i8* @host1x_bo_kmap(%struct.host1x_bo*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
