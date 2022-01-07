; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_section_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_section_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.dm_integrity_c = type { i32, i32 }
%struct.journal_entry = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@JOURNAL_MAC_SIZE = common dso_local global i32 0, align 4
@desc = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"crypto_shash_init\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"crypto_shash_update\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"crypto_shash_final\00", align 1
@HASH_MAX_DIGESTSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"digest_size\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_integrity_c*, i32, i32*)* @section_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @section_mac(%struct.dm_integrity_c* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.dm_integrity_c*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.journal_entry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %14 = load i32, i32* @JOURNAL_MAC_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @desc, align 8
  %17 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %18 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_8__* %16, i32 %19)
  %21 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %22 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @desc, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @desc, align 8
  %27 = call i32 @crypto_shash_init(%struct.TYPE_8__* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @dm_integrity_io_error(%struct.dm_integrity_c* %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %130

35:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %60, %35
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %39 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %36
  %43 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call %struct.journal_entry* @access_journal_entry(%struct.dm_integrity_c* %43, i32 %44, i32 %45)
  store %struct.journal_entry* %46, %struct.journal_entry** %10, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @desc, align 8
  %48 = load %struct.journal_entry*, %struct.journal_entry** %10, align 8
  %49 = getelementptr inbounds %struct.journal_entry, %struct.journal_entry* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = call i32 @crypto_shash_update(%struct.TYPE_8__* %47, i32* %50, i32 4)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %42
  %56 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @dm_integrity_io_error(%struct.dm_integrity_c* %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %130

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %36

63:                                               ; preds = %36
  %64 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %65 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @crypto_shash_digestsize(i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @JOURNAL_MAC_SIZE, align 4
  %70 = icmp ule i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i64 @likely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %63
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** @desc, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @crypto_shash_final(%struct.TYPE_8__* %75, i32* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @dm_integrity_io_error(%struct.dm_integrity_c* %82, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  br label %130

85:                                               ; preds = %74
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* @JOURNAL_MAC_SIZE, align 4
  %91 = load i32, i32* %9, align 4
  %92 = sub i32 %90, %91
  %93 = call i32 @memset(i32* %89, i32 0, i32 %92)
  br label %129

94:                                               ; preds = %63
  %95 = load i32, i32* @HASH_MAX_DIGESTSIZE, align 4
  %96 = zext i32 %95 to i64
  %97 = call i8* @llvm.stacksave()
  store i8* %97, i8** %11, align 8
  %98 = alloca i32, i64 %96, align 16
  store i64 %96, i64* %12, align 8
  %99 = load i32, i32* %9, align 4
  %100 = zext i32 %99 to i64
  %101 = mul nuw i64 4, %96
  %102 = icmp ugt i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i64 @WARN_ON(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %94
  %107 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  %110 = call i32 @dm_integrity_io_error(%struct.dm_integrity_c* %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  store i32 2, i32* %13, align 4
  br label %125

111:                                              ; preds = %94
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** @desc, align 8
  %113 = call i32 @crypto_shash_final(%struct.TYPE_8__* %112, i32* %98)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @dm_integrity_io_error(%struct.dm_integrity_c* %118, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  store i32 2, i32* %13, align 4
  br label %125

121:                                              ; preds = %111
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* @JOURNAL_MAC_SIZE, align 4
  %124 = call i32 @memcpy(i32* %122, i32* %98, i32 %123)
  store i32 0, i32* %13, align 4
  br label %125

125:                                              ; preds = %117, %106, %121
  %126 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %126)
  %127 = load i32, i32* %13, align 4
  switch i32 %127, label %135 [
    i32 0, label %128
    i32 2, label %130
  ]

128:                                              ; preds = %125
  br label %129

129:                                              ; preds = %128, %85
  br label %134

130:                                              ; preds = %125, %81, %55, %31
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* @JOURNAL_MAC_SIZE, align 4
  %133 = call i32 @memset(i32* %131, i32 0, i32 %132)
  br label %134

134:                                              ; preds = %130, %129
  ret void

135:                                              ; preds = %125
  unreachable
}

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @crypto_shash_init(%struct.TYPE_8__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dm_integrity_io_error(%struct.dm_integrity_c*, i8*, i32) #1

declare dso_local %struct.journal_entry* @access_journal_entry(%struct.dm_integrity_c*, i32, i32) #1

declare dso_local i32 @crypto_shash_update(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @crypto_shash_digestsize(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @crypto_shash_final(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
