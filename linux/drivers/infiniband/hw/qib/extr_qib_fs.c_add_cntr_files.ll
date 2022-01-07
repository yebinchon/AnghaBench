; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_fs.c_add_cntr_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_fs.c_add_cntr_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.qib_devdata = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"create_file(%s) failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"counters\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@cntr_ops = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"create_file(%s/counters) failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"counter_names\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"create_file(%s/counter_names) failed: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"portcounter_names\00", align 1
@portcntr_ops = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"create_file(%s/%s) failed: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"port%dcounters\00", align 1
@QIB_HAS_QSFP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"qsfp%d\00", align 1
@qsfp_ops = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"flash\00", align 1
@S_IWUSR = common dso_local global i32 0, align 4
@flash_ops = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"create_file(%s/flash) failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.qib_devdata*)* @add_cntr_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_cntr_files(%struct.super_block* %0, %struct.qib_devdata* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.qib_devdata*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca [10 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [24 x i8], align 16
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.qib_devdata* %1, %struct.qib_devdata** %4, align 8
  %11 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %13 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @snprintf(i8* %11, i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %17 = load i32, i32* @S_IFDIR, align 4
  %18 = load i32, i32* @S_IRUGO, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @S_IXUGO, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.super_block*, %struct.super_block** %3, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 0
  %24 = load %struct.dentry*, %struct.dentry** %23, align 8
  %25 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %26 = call i32 @create_file(i8* %16, i32 %21, %struct.dentry* %24, %struct.dentry** %5, i32* @simple_dir_operations, %struct.qib_devdata* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %31 = load i32, i32* %8, align 4
  %32 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %30, i32 %31)
  br label %158

33:                                               ; preds = %2
  %34 = load i32, i32* @S_IFREG, align 4
  %35 = load i32, i32* @S_IRUGO, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.dentry*, %struct.dentry** %5, align 8
  %38 = load i32*, i32** @cntr_ops, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %41 = call i32 @create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %36, %struct.dentry* %37, %struct.dentry** %6, i32* %39, %struct.qib_devdata* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %46 = load i32, i32* %8, align 4
  %47 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %45, i32 %46)
  br label %158

48:                                               ; preds = %33
  %49 = load i32, i32* @S_IFREG, align 4
  %50 = load i32, i32* @S_IRUGO, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.dentry*, %struct.dentry** %5, align 8
  %53 = load i32*, i32** @cntr_ops, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %56 = call i32 @create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %51, %struct.dentry* %52, %struct.dentry** %6, i32* %54, %struct.qib_devdata* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %61 = load i32, i32* %8, align 4
  %62 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %60, i32 %61)
  br label %158

63:                                               ; preds = %48
  %64 = load i32, i32* @S_IFREG, align 4
  %65 = load i32, i32* @S_IRUGO, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.dentry*, %struct.dentry** %5, align 8
  %68 = load i32*, i32** @portcntr_ops, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %71 = call i32 @create_file(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %66, %struct.dentry* %67, %struct.dentry** %6, i32* %69, %struct.qib_devdata* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %63
  %75 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %76 = load i32, i32* %8, align 4
  %77 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %76)
  br label %158

78:                                               ; preds = %63
  store i32 1, i32* %9, align 4
  br label %79

79:                                               ; preds = %139, %78
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %82 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp sle i32 %80, %83
  br i1 %84, label %85, label %142

85:                                               ; preds = %79
  %86 = getelementptr inbounds [24 x i8], [24 x i8]* %10, i64 0, i64 0
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @sprintf(i8* %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %87)
  %89 = getelementptr inbounds [24 x i8], [24 x i8]* %10, i64 0, i64 0
  %90 = load i32, i32* @S_IFREG, align 4
  %91 = load i32, i32* @S_IRUGO, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.dentry*, %struct.dentry** %5, align 8
  %94 = load i32*, i32** @portcntr_ops, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %99 = call i32 @create_file(i8* %89, i32 %92, %struct.dentry* %93, %struct.dentry** %6, i32* %97, %struct.qib_devdata* %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %85
  %103 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %104 = getelementptr inbounds [24 x i8], [24 x i8]* %10, i64 0, i64 0
  %105 = load i32, i32* %8, align 4
  %106 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %103, i8* %104, i32 %105)
  br label %158

107:                                              ; preds = %85
  %108 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %109 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @QIB_HAS_QSFP, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %107
  br label %139

115:                                              ; preds = %107
  %116 = getelementptr inbounds [24 x i8], [24 x i8]* %10, i64 0, i64 0
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @sprintf(i8* %116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %117)
  %119 = getelementptr inbounds [24 x i8], [24 x i8]* %10, i64 0, i64 0
  %120 = load i32, i32* @S_IFREG, align 4
  %121 = load i32, i32* @S_IRUGO, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.dentry*, %struct.dentry** %5, align 8
  %124 = load i32*, i32** @qsfp_ops, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %130 = call i32 @create_file(i8* %119, i32 %122, %struct.dentry* %123, %struct.dentry** %6, i32* %128, %struct.qib_devdata* %129)
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %115
  %134 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %135 = getelementptr inbounds [24 x i8], [24 x i8]* %10, i64 0, i64 0
  %136 = load i32, i32* %8, align 4
  %137 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %134, i8* %135, i32 %136)
  br label %158

138:                                              ; preds = %115
  br label %139

139:                                              ; preds = %138, %114
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %9, align 4
  br label %79

142:                                              ; preds = %79
  %143 = load i32, i32* @S_IFREG, align 4
  %144 = load i32, i32* @S_IWUSR, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @S_IRUGO, align 4
  %147 = or i32 %145, %146
  %148 = load %struct.dentry*, %struct.dentry** %5, align 8
  %149 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %150 = call i32 @create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %147, %struct.dentry* %148, %struct.dentry** %6, i32* @flash_ops, %struct.qib_devdata* %149)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %142
  %154 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %155 = load i32, i32* %8, align 4
  %156 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i8* %154, i32 %155)
  br label %157

157:                                              ; preds = %153, %142
  br label %158

158:                                              ; preds = %157, %133, %102, %74, %59, %44, %29
  %159 = load i32, i32* %8, align 4
  ret i32 %159
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @create_file(i8*, i32, %struct.dentry*, %struct.dentry**, i32*, %struct.qib_devdata*) #1

declare dso_local i32 @pr_err(i8*, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
