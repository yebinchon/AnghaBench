; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp-debugfs.c_bpmp_populate_dir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp-debugfs.c_bpmp_populate_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { i32 }
%struct.seqbuf = type { i32 }
%struct.dentry = type { i32 }

@EIO = common dso_local global i32 0, align 4
@DEBUGFS_S_ISDIR = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@DEBUGFS_S_IRUSR = common dso_local global i64 0, align 8
@S_IRUSR = common dso_local global i32 0, align 4
@DEBUGFS_S_IWUSR = common dso_local global i64 0, align 8
@S_IWUSR = common dso_local global i32 0, align 4
@debugfs_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_bpmp*, %struct.seqbuf*, %struct.dentry*, i64)* @bpmp_populate_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpmp_populate_dir(%struct.tegra_bpmp* %0, %struct.seqbuf* %1, %struct.dentry* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_bpmp*, align 8
  %7 = alloca %struct.seqbuf*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.dentry*, align 8
  %15 = alloca i32, align 4
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %6, align 8
  store %struct.seqbuf* %1, %struct.seqbuf** %7, align 8
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store i64 %3, i64* %9, align 8
  br label %16

16:                                               ; preds = %115, %4
  %17 = load %struct.seqbuf*, %struct.seqbuf** %7, align 8
  %18 = call i32 @seqbuf_eof(%struct.seqbuf* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %116

21:                                               ; preds = %16
  %22 = load %struct.seqbuf*, %struct.seqbuf** %7, align 8
  %23 = call i32 @seqbuf_read_u32(%struct.seqbuf* %22, i64* %11)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %117

28:                                               ; preds = %21
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.seqbuf*, %struct.seqbuf** %7, align 8
  %34 = call i32 @seqbuf_seek(%struct.seqbuf* %33, i32 -4)
  store i32 0, i32* %5, align 4
  br label %117

35:                                               ; preds = %28
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %117

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.seqbuf*, %struct.seqbuf** %7, align 8
  %45 = call i32 @seqbuf_read_u32(%struct.seqbuf* %44, i64* %12)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %5, align 4
  br label %117

50:                                               ; preds = %43
  %51 = load %struct.seqbuf*, %struct.seqbuf** %7, align 8
  %52 = call i32 @seqbuf_read_str(%struct.seqbuf* %51, i8** %13)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %5, align 4
  br label %117

57:                                               ; preds = %50
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* @DEBUGFS_S_ISDIR, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %57
  %63 = load i8*, i8** %13, align 8
  %64 = load %struct.dentry*, %struct.dentry** %8, align 8
  %65 = call %struct.dentry* @debugfs_create_dir(i8* %63, %struct.dentry* %64)
  store %struct.dentry* %65, %struct.dentry** %14, align 8
  %66 = load %struct.dentry*, %struct.dentry** %14, align 8
  %67 = icmp ne %struct.dentry* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %117

71:                                               ; preds = %62
  %72 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %73 = load %struct.seqbuf*, %struct.seqbuf** %7, align 8
  %74 = load %struct.dentry*, %struct.dentry** %14, align 8
  %75 = load i64, i64* %9, align 8
  %76 = add nsw i64 %75, 1
  %77 = call i32 @bpmp_populate_dir(%struct.tegra_bpmp* %72, %struct.seqbuf* %73, %struct.dentry* %74, i64 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %5, align 4
  br label %117

82:                                               ; preds = %71
  br label %115

83:                                               ; preds = %57
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* @DEBUGFS_S_IRUSR, align 8
  %86 = and i64 %84, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* @S_IRUSR, align 4
  br label %91

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90, %88
  %92 = phi i32 [ %89, %88 ], [ 0, %90 ]
  store i32 %92, i32* %15, align 4
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* @DEBUGFS_S_IWUSR, align 8
  %95 = and i64 %93, %94
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* @S_IWUSR, align 4
  br label %100

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i32 [ %98, %97 ], [ 0, %99 ]
  %102 = load i32, i32* %15, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %15, align 4
  %104 = load i8*, i8** %13, align 8
  %105 = load i32, i32* %15, align 4
  %106 = load %struct.dentry*, %struct.dentry** %8, align 8
  %107 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %108 = call %struct.dentry* @debugfs_create_file(i8* %104, i32 %105, %struct.dentry* %106, %struct.tegra_bpmp* %107, i32* @debugfs_fops)
  store %struct.dentry* %108, %struct.dentry** %14, align 8
  %109 = load %struct.dentry*, %struct.dentry** %14, align 8
  %110 = icmp ne %struct.dentry* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %100
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %5, align 4
  br label %117

114:                                              ; preds = %100
  br label %115

115:                                              ; preds = %114, %82
  br label %16

116:                                              ; preds = %16
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %116, %111, %80, %68, %55, %48, %39, %32, %26
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @seqbuf_eof(%struct.seqbuf*) #1

declare dso_local i32 @seqbuf_read_u32(%struct.seqbuf*, i64*) #1

declare dso_local i32 @seqbuf_seek(%struct.seqbuf*, i32) #1

declare dso_local i32 @seqbuf_read_str(%struct.seqbuf*, i8**) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.tegra_bpmp*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
